"
" Samuel's .vimrc config file
"
"          2010, 09/28, @NSYSU
"                                                                      ___           ___
"                                           ___           ___         /\_ \         /\_ \ (R)
"  sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
"    ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
"   /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
"  /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
"  \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
"   \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
"
 
 

set nocompatible
"translate the <tab> to <space>
set expandtab

"set noet <-- to unset the expandtab
"how many SPACE when read \t (<TAB>) char
set tabstop=4
 
"control the indentation width of shift right
"setting the <tab> width
set shiftwidth=4

"explaination for <BackSpace>
set softtabstop=4
set smarttab

set nu
set cursorline

set smartindent
set cindent

" show line number
set nu
syntax on
" setting backspace
set backspace=indent,eol,start

highlight Comment ctermfg=darkcyan
set autoindent

set showmatch
"set mouse=a

setlocal spell spelllang=en_us
" set spell
set nospell


if $TERM == 'screen'
  set term=xterm
endif

nmap gw :wincmd w<CR>


source ~/.vim/plugin/supertab.vim
source ~/.vim/plugin/crefvim.vim
source ~/.vim/plugin/mycursor_in_brace.vim
source ~/.vim/plugin/mymvtotab.vim
source ~/.vim/plugin/mymaptoggle.vim

" set map key by MoveTo-function in mvtotab.vim 
nmap gmt :call MoveToNextTab() <CR>
nmap gmT :call MoveToPrevTab() <CR>

" set F5 F6 by MapToggle-function in mymaptoggle.vim
MapToggle <F6> scrollbind
MapToggle <F5> nopaste
