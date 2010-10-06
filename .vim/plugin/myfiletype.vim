"""""""""""""""
"detect filetype and source scripts
"
"""""""""""""""

"""""""""""""""
"global using: supertab
"
"""""""""""""""
au BufNewFile,BufRead * if expand('%:e') !~ '^\(py\|pyw\|pyl\)$' | source ~/.vim/supertab/plugin/supertab.vim | endif   

"""""""""""""""
"C: CRefVim
"
"""""""""""""""
au BufNewFile,BufRead *.c source ~/.vim/crefvim/plugin/crefvim.vim 

"""""""""""""""
"Python: PyDiction
"
"""""""""""""""
au BufNewFile,BufRead *.py,*.pyw,*.pyl source ~/.vim/pydiction/plugin/python_pydiction.vim | let g:pydiction_location = '~/.vim/pydiction/complete-dict'
