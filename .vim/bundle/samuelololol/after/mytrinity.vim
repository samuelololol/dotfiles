let Tlist_WinWidth=10
function! <SID>Trinity_Toggle()

    if s:Trinity_tabPage == 0
        let s:Trinity_tabPage = tabpagenr()
    endif
    if s:Trinity_tabPage != tabpagenr()
        echohl ErrorMsg
        echo "Trinity: Not support multiple tab pages for now."
        echohl None
        return
    endif
    if s:Trinity_switch == 1
        if s:tag_list_switch == 1
            TlistClose
            let s:tag_list_switch = 0
        endif
        if s:source_explorer_switch == 1
            SrcExplClose
            let s:source_explorer_switch = 0
        endif
        if s:nerd_tree_switch == 1
            NERDTreeClose
            let s:nerd_tree_switch = 0
        endif
        let s:Trinity_switch = 0
        let s:Trinity_tabPage = 0
    else
        call <SID>Trinity_InitTagList()
        Tlist
        let s:tag_list_switch = 1
        call <SID>Trinity_InitSourceExplorer()
        SrcExpl
        let s:source_explorer_switch = 1
        call <SID>Trinity_InitNERDTree()
        NERDTree
        let s:nerd_tree_switch = 1
        let s:Trinity_switch = 1
    endif

    call <SID>Trinity_UpdateWindow()

endfunction " }}}


function! <SID>Trinity_InitTagList()

    " Split to the right side of the screen
    let g:Tlist_Use_Left_Window = 1
    " Set the window width
    let g:Tlist_WinWidth = 20
    " Sort by the order
    let g:Tlist_Sort_Type = "order"
    " Do not display the help info
    let g:Tlist_Compact_Format = 1
    " If you are the last, kill yourself
    let g:Tlist_Exit_OnlyWindow = 1
    " Do not close tags for other files
    let g:Tlist_File_Fold_Auto_Close = 1
    " Do not show folding tree
    let g:Tlist_Enable_Fold_Column = 0
    " Always display one file tags
    let g:Tlist_Show_One_File = 1

endfunction " }}}


