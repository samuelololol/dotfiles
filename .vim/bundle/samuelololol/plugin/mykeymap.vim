"some key mapping
"change window
nmap gw :wincmd w<CR>
nmap gW :wincmd W<CR>

"move current tab to nexttab as a window
nmap gmt :call MoveToNextTab() <CR>
nmap gmT :call MoveToPrevTab() <CR>

"------------------------------------------------------

" NERDTree map to <F2>
map <F2> :NERDTreeToggle<CR>
"TagList"
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
map <F3> :Tlist<CR>

"clear search result
"nmap <F4> :let @/=""<CR>"

"Tagbar
map <F4> :TagbarToggle<CR>
"<F5> <F6> setting is in mykeymapfunction.vim
