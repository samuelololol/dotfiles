"tab-related"
"
"translate the <tab> to <space> with the counts: tabstop
"(counts of space for pressing tab)
"unset=>   :set noet
set expandtab
"how many SPACE when read \t (<TAB>) char
"colorize the <Tab>
set tabstop=4
set listchars=tab:>-

"indentation-related"
"Number of spaces to use for each step of (auto)indent.
"(counts of space for indentation)
set shiftwidth=4

"explaination for <BackSpace> and <Tab> when u in insert mode editing
set softtabstop=4

"if 'smarttab' is on,
"    At beginning <Tab> key inserts indentation according to 'shiftwidth'
"    elsewhere, to 'tabstop' and 'softtabstop'
set smarttab

"'smartindent' should not be used with 'cindent'
set smartindent
"copy the indentation from the previous line
set autoindent
        "setting in c.vim and cpp.vim
        "set cindent
        "
        "
" setting backspace work
set backspace=indent,eol,start
