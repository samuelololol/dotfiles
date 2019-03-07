"""""""""""""""
"some hotkey for cscope in vim
"
"""""""""""""""
" The following maps all invoke one of the following cscope search types:
"
" * (grep)       's'   symbol: find all references to the token under cursor
" * (definition) 'g'   global: find global definition(s) of the token under cursor
" * (caller)     'c'   calls:  find all calls to the function name under cursor
" * (callee)     'd'   called: find functions that function under cursor calls
"                't'   text:   find all instances of the text under cursor
"                'e'   egrep:  egrep search for the word under cursor
"                'f'   file:   open the filename under cursor
"                'i'   includes: find files that include the filename under cursor
"
" Hitting CTRL-[ before the search type opens the result in a new tab.
nmap <C-\>s :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find s <C-R>=g:word<CR><CR>
nmap <C-\>g :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find g <C-R>=g:word<CR><CR>
nmap <C-\>c :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find c <C-R>=g:word<CR><CR>
nmap <C-\>t :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find t <C-R>=g:word<CR><CR>
nmap <C-\>e :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find e <C-R>=g:word<CR><CR>
nmap <C-\>f :let g:word = expand("<cfile>")<CR>:tabnew<CR>:cs find f <C-R>=g:word<CR><CR>
nmap <C-\>i :let g:word = expand("<cfile>")<CR>:tabnew<CR>:cs find i <C-R>=g:word<CR><CR>
nmap <C-\>d :let g:word = expand("<cword>")<CR>:tabnew<CR>:cs find d <C-R>=g:word<CR><CR>


""find symbol (as keyword)
"nmap <C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
""find global (as global variable or global function name)
"nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
""find call (as function)
"nmap <C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
""find text (as text, include commment)
"nmap <C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
"
"
""find e (as regular expression)
"nmap <C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
""find include (as include header filename)
"nmap <C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
""find calle'D' (as function name, list all function be called by this one)
"nmap <C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
