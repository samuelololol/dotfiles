function! Sysc()
    source ~/.vim/ftplugin/systemc.vim
    set ft=cpp.sysc
endfun
command! -nargs=0 Sysc call Sysc()
