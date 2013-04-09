set cindent
set foldmethod=indent
"set foldcolumn=3
set foldlevel=3     " fold everything deeper than 0
set foldnestmax=4   " dont fold everything deeper than 2
set colorcolumn=80

let g:GenCscopeCmdCpp = "find . -name \"*.[ch]\" > cscope.files && find . -name \"*.cpp\" >> cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdCpp = "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++"

let g:GenCscopeCmd = g:GenCscopeCmdCpp
let g:GenCtagsCmd = g:GenCtagsCmdCpp
