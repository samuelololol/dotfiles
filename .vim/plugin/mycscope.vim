"""""""""""""""
"some hotkey for cscope in vim
"
"""""""""""""""

"find symbol (as keyword)
nmap <C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
"find global (as global variable or global function name)
nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
"find call (as function)
nmap <C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
"find text (as text, include commment)
nmap <C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>



"find e (as regular expression)
nmap <C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
"find include (as include header filename)
nmap <C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"find calle'D' (as function name, list all function be called by this one)
nmap <C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
"
