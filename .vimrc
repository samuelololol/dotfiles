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
 
"關閉vi compatible模式
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

"encoding
" 檔案編碼,檔案編碼清單 (file encoding)(file encoding list)
set fenc=utf-8 
set fencs=utf-8,big5,gbk,euc-jp,utf-16le
" 內部編碼      (encoding inside Vim)
set enc=utf-8 
" Terminal編碼  (terminal encoding)
set tenc=utf-8





"some key mapping
"change window
nmap gw :wincmd w<CR>

" NERDTree map to <F2>
map <F2> :NERDTreeToggle<CR>

"TagList"
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
map <F3> :Tlist<CR>

"clear search result
nmap <F4> :let @/=""<CR>"

" read the vim doc in ~/.vim/doc
helptags ~/dotfiles/.vim/doc

" LanguageTool
let g:languagetool_jar='~/dotfiles/LanguageTool/JLanguageTool/dist/LanguageTool.jar'


"pct's statusline
" 設定狀態列訊息
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
"highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

" %1* -> User1's highlight, %2*->User2's highlight
" =   -> Separation point between left and right aligned items.
" <   -> Where to truncate line if too long.  Default is at the start.
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}]%m " file format
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
