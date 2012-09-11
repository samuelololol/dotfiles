"some key mapping
"change window
nmap gw :wincmd w<CR>
nmap gW :wincmd W<CR>

"move current tab to nexttab as a window
nmap gmt :call MoveToNextTab() <CR>
nmap gmT :call MoveToPrevTab() <CR>

"------------------------------------------------------

"<F2> open NERDTree 
nmap <F2> :NERDTreeToggle<CR>

"<F3> open TagList
nmap <F3> :Tlist<CR>

"clear search result
"nmap <F4> :let @/=""<CR>"

"<F4> open Tagbar
nmap <F4> :TagbarToggle<CR>

"<F5> Reflesh file
nmap <F5> :edit <CR>:echom "Update File"<CR>

"<F6>, <F7> setting is in mykeymapfunction.vim
