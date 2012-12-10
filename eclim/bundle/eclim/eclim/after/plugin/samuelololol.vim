colorscheme jellybeans
set expandtab
set tabstop=4
set listchars=tab:>-
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent
set autoindent
set cindent
set nu
set cursorline
syntax on
set backspace=indent,eol,start
"colorscheme jellybeans
set term=screen-256color
filetype on
filetype plugin on
filetype indent on
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set title                " change the terminal's title
"set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup             " don't backup
set noswapfile           " don't backup

set guioptions-=m "turn off menu bar
set guioptions-=T "turn off toolbar
set guioptions-=L "turn off scroll bar
set guioptions-=l "



nmap gw :wincmd w<CR>
nmap gW :wincmd W<CR>

"move current tab to nexttab as a window
source ~/dotfiles/.vim/bundle/samuelololol/plugin/mykeymapfunction.vim
nmap gmt :call MoveToNextTab() <CR>
nmap gmT :call MoveToPrevTab() <CR>


"gvim
set guifont=Inconsolata\ 14

" Eclim Settings
let g:EclimTaglistEnable=1
let g:EclimProjectTreeAutoOpen=1
let g:EclimProjectTreeExpandPathOnOpen=1
let g:EclimProjectTreeSharedInstance=1
let g:EclimProjectTreeActions = [{'pattern':'.*','name':'Tab','action':'tabnew'}]

let g:EclimShowCurrentError=1
let g:EclimMenus=1
"correct current cursor line
nmap <leader>j :JavaCorrect<cr> 

