nmap <Leader>i <C-W>j:call g:SrcExpl_Jump()<CR> 
function! g:SrcExpl_UpdateTags()
    " Go to the current work directory
    " silent! exe "cd " . expand('%:p:h')
    " Get the amount of all files named 'tags'
    let l:tmp = len(tagfiles())

    " No tags file or not found one
    if l:tmp == 0
        " Ask user if or not create a tags file
        echohl Question
            \ | let l:tmp = <SID>SrcExpl_GetInput("\nSrcExpl: "
                \ . "The 'tags' file was not found in your PATH.\n"
            \ . "Create one in the current directory now? (y)es/(n)o?") |
        echohl None
        " They do
        if l:tmp == "y" || l:tmp == "yes"
            " We tell user where we create a tags file
            echohl Question
                echo "SrcExpl: Creating 'tags' file in (". expand('%:p:h') . ")"
            echohl None
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
            " Rejudge the tags file if existed
            if !filereadable("tags")
                " Tell them what happened
                call <SID>SrcExpl_ReportErr("Execute 'ctags' utility program failed")
                return -1
            endif
        " They don't
        else
            echo ""
            return -2
        endif
    " More than one tags file
    elseif l:tmp > 1
        call <SID>SrcExpl_ReportErr("More than one tags file in your PATH")
        return -3
    " Found one successfully
    else
        " Is the tags file in the current directory ?
        if tagfiles()[0] ==# "tags"
            " Prompt the current work directory
            echohl Question
                echo "SrcExpl: Updating 'tags' file in (". expand('%:p:h') . ")"
            echohl None
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
        " Up to other directories
        else
            " Prompt the whole path of the tags file
            echohl Question
                echo "SrcExpl: Updating 'tags' file in (". tagfiles()[0][:-6] . ")"
            echohl None
            " Store the current word directory at first
            let l:tmp = getcwd()
            " Go to the directory that contains the old tags file
            silent! exe "cd " . tagfiles()[0][:-5]
            " Call the external 'ctags' utility program
            exe "!" . g:SrcExpl_updateTagsCmd
           " Go back to the original work directory
           silent! exe "cd " . l:tmp
        endif
    endif

    return 0

endfunction " }}}


