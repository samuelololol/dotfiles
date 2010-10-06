
au BufNewFile,BufRead * if expand('%:e') !~ '^\(py\|pyw\)$' | source ~/.vim/supertab/plugin/supertab.vim | endif | echo "all" 
au BufNewFile,BufRead *.c  source ~/.vim/crefvim/plugin/crefvim.vim | echo "c files"
au BufNewFile,BufRead *.py,*.pyw,*.pyl echo "py files"
