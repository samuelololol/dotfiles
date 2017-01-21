" 0: default: samuelololol
" 1: linux
" 2:
let g:samuel_coding_style=0
let g:samuel_makeprg_modified=0

autocmd BufWritePost <buffer> :call s:CheckCodingStyle()

function! s:LinuxCodingStyle()
    " setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    let g:samuel_makeprg_modified=1
endfunction

function! s:SamuelolololCodingStyle()
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE,LEADING_SPACE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    let g:samuel_makeprg_modified=1
endfunction

function! s:CheckCodingStyle(...)
    if a:0 > 0
        call s:ChangeCodingStyle(a:1)
    elseif g:samuel_makeprg_modified == 0
        call s:ChangeCodingStyle()
    endif

    if g:samuel_coding_style == 0
        echom "Check samuelololol default coding style"
        "call s:SamuelolololCodingStyle()
    elseif g:samuel_coding_style == 1
        echom "Check Linux Kernel coding style"
        "call s:LinuxCodingStyle()
    endif
    silent make
    cwindow 10
endfunction

function! s:ChangeCodingStyle(...)
    let l:style = 0
    if a:0 > 0
        if a:1 == 'samuelololol' || 0
            let l:style = 0
            call s:SamuelolololCodingStyle()
        elseif a:1 == 'Linux' || 1
            let l:style = 1
            call s:LinuxCodingStyle()
        endif
    else
        let l:style = 0
        call s:SamuelolololCodingStyle()
    endif

    let g:samuel_coding_style = l:style

    " source settings
    so ~/.vim/samuelololol/after/ftplugin/c/coding_style.vim
endfunction
command! -nargs=? -complete=customlist,s:ListStyles ChangeCodingStyle call s:ChangeCodingStyle(<f-args>)
function! s:ListStyles(A,L,P)
    return ['Linux', 'samuelololol']
endfun
