"source the keymap function
source ~/.vim/bundle/samuelololol/plugin/mykeymapfunction.vim

"change <leader> key
let mapleader = ","
let g:mapleader = ","

"some key mapping
"change window
nmap gw :wincmd w<CR>
nmap gW :wincmd W<CR>

"move current tab to nexttab as a window
nmap gmt :call MoveToNextTab() <CR>
nmap gmT :call MoveToPrevTab() <CR>

"----------------------------------------------------------------------
"normal mode <F2> open NERDTree
nmap <F2> :NERDTreeToggle<CR>

"<F3> open TagList
nmap <F3> :Tlist<CR>

"clear search result
"nmap <F4> :let @/=""<CR>"

"<F4> open Tagbar
nmap <F4> :TagbarToggle<CR>

"<F5> Refresh file
nmap <F5> :edit <CR>:echom "Update File"<CR>
nmap <C-\><C-r> :edit <CR>:echom "Update File"<CR>G

" set F5 F6 by MapToggle-function in mymaptoggle.vim
au BufNew MapToggle <F6> scrollbind
au BufNew MapToggle <F7> nopaste
" set F5 F6 by MapToggle-function in mymaptoggle.vim
MapToggle <F6> scrollbind
MapToggle <F7> nopaste

" EasyAlign
vnoremap <silent> <Enter> :EasyAlign<Enter>
