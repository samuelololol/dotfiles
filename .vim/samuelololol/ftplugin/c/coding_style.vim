" 0: default
" 1: linux
" 2:
let g:samuel_coding_style=0

autocmd BufWritePost <buffer> :call s:CheckCodingStyle()

function! s:LinuxCodingStyle()
    " setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    silent make
    cwindow 10
endfunction

function! s:SamuelolololCodingStyle()
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE,LEADING_SPACE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    silent make
    cwindow 10
endfunction

function! s:CheckCodingStyle()
    if g:samuel_coding_style == 0
        echom "Check samuelololol default coding style"
        call s:SamuelolololCodingStyle()
    elseif g:samuel_coding_style == 1
        echom "Check Linux Kernel coding style"
        call s:LinuxCodingStyle()
    endif
endfunction

function! s:ChangeCodingStyle()
    if g:samuel_coding_style == 0
        echom "Change to samuelololol coding style"
    elseif g:samuel_coding_style == 1
        echom "Change to Linux coding style"
    endif

    " source settings
    so ~/.vim/samuelololol/after/ftplugin/c/coding_style.vim
endfunction
command! ChangeCodingStyle call s:ChangeCodingStyle()
