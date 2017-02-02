"                                                                      ___           ___
"                                           ___           ___         /\_ \         /\_ \ (R)
"  sssssssssssssamuelolololololololol      /\_ \         /\_ \     ___\//\ \     ___\//\ \
"    ____    __      ___ ___   __  __    __\//\ \     ___\//\ \   / __`\\ \ \   / __`\\ \ \
"   /',__\ /'__`\  /' __` __`\/\ \/\ \ /'__`\\ \ \   / __`\\ \ \ /\ \L\ \\_\ \_/\ \L\ \\_\ \_
"  /\__, `\\ \L\.\_/\ \/\ \/\ \ \ \_\ \\  __/ \_\ \_/\ \L\ \\_\ \\ \____//\____\ \____//\____\
"  \/\____/ \__/.\_\ \_\ \_\ \_\ \____/ \____\/\____\ \____//\____\/___/ \/____/\/___/ \/____/
"   \/___/ \/__/\/_/\/_/\/_/\/_/\/___/ \/____/\/____/\/___/ \/____/ by samuelololol@gmail.com
"
"
" Samuel's .vimrc config file
"
"          2010, 09/28 @NSYSU

"vi compatible mode
set nocompatible

" " handle nvim normal/insert mode switch issue
" if has('nvim')
"     set ttimeoutlen=10
"     augroup FastEscape
"         autocmd!
"         au InsertEnter * set timeoutlen=0
"         au InsertLeave * set timeoutlen=1000
"     augroup END
" endif
"

" show line number
set nu
set cursorline
syntax on

"spell check
setlocal spell spelllang=en_us
set nospell
" set spell

" filetype support
filetype on
filetype plugin on
filetype indent on

set smartcase
set ignorecase

"folding series setting
"set fdm=marker
"set fdm=syntax
"set fdm=indent
"        set foldcolumn=3
"        set foldlevel=0     " fold everything deeper than 0
"        set foldnestmax=1  " dont fold everything deeper than 1
"

"reference from: http://nvie.com/posts/how-i-boosted-my-vim
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup             " don't backup
set noswapfile           " don't backup

"確保 Vim 能在中文字符之間折行而不要求空格的存在
"並且在大部分情況下可以正確地處理中文重新格式化
set formatoptions+=tmM
set textwidth=80

"" pathogen setting "
"call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()
"call pathogen#infect()
execute pathogen#infect()
Helptags
runtime ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim

"disable mouse
set mouse-=a

"change mapleader
let mapleader = ","
let g:mapleader = ","

"""modeline default disable by samuel
"set modeline
"set modelines=5

" " setting key map must in vimrc
set runtimepath+=~/.vim/samuelololol
set runtimepath+=~/.vim/samuelololol/after
set runtimepath+=~/.vim/local_settings
set runtimepath+=~/.vim/local_settings/after
" if has('nvim')
"     set runtimepath+=~/.vim/bundle/samuelololol/after
" endif
