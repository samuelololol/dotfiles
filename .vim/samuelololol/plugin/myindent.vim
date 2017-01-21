" ===
" tab
" ===
setlocal tabstop=4      " <TAB> width after loading file
setlocal expandtab      " translate <TAB> to space, when press <TAB>, vim will
                        " insert <softtabstop> of space
setlocal softtabstop=4  " <BS>, <Tab> width in insert mode

"If useing special key to indicate the tailing sapce, it have to change the
"SpecialKey color
"hi SpecialKey ctermfg=white ctermbg=196
"colorize the <Tab>
"set listchars=eol:↵,tab:>-,trail:╳
set list
set listchars=tab:>-

" ======
" indent
" ======
setlocal shiftwidth=4   " >>, <<, ==, and automatic indent
setlocal smarttab       " if on, use 'shiftwidth' as the indent width at
                        " beginning of the line. ('tabstop', 'softtabstop'
                        " used elsewhere)

set autoindent
set smartindent
"set cindent


" =========
" backspace
" =========
set backspace=indent,eol,start
