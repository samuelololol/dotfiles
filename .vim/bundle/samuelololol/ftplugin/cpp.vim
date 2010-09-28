setlocal cindent
setlocal foldmethod=indent
"setlocal foldcolumn=3
setlocal foldlevel=3     " fold everything deeper than 0
setlocal foldnestmax=4   " dont fold everything deeper than 2
setlocal colorcolumn=80

let g:GenCscopeCmdCpp = "find . -name \"*.[ch]\" > cscope.files && find . -name \"*.cpp\" >> cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdCpp = "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++"

let g:GenCscopeCmd = g:GenCscopeCmdCpp
let g:GenCtagsCmd = g:GenCtagsCmdCpp
