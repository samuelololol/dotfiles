"some hotkey for cscope in vim
"
nmap <C-\>s
	\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g
	\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c
	\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t
	\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e
	\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i
	\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d
	\:vert scs find d <C-R>=expand("<cword>")<CR><CR>
