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

"tab-related"
"
"translate the <tab> to <space> with the counts: tabstop
"(counts of space for pressing tab)
"unset:   :set noet
set expandtab
set tabstop=4
"how many SPACE when read \t (<TAB>) char
"colorize the <Tab>
set listchars=tab:>-
set list

"indentation-related"
"Number of spaces to use for each step of (auto)indent.
"(counts of space for indentation)
set shiftwidth=4

"explaination for <BackSpace> and <Tab> when u in insert mode editing
set softtabstop=4
set smarttab

set smartindent
set autoindent
set cindent







" show line number
set nu
set cursorline
syntax on

" setting backspace work
set backspace=indent,eol,start

"comment color
highlight Comment ctermfg=darkcyan

"spell check
setlocal spell spelllang=en_us
set nospell
" set spell

"terminal setting
if $TERM == 'screen'
  set term=xterm
endif

"change window
nmap gw :wincmd w<CR>

" NERDTree map to <F2>
map <F2> :NERDTreeToggle<CR>

" read the vim doc in ~/.vim/doc
helptags ~/.vim/doc
