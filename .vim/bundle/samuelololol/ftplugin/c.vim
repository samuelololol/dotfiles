set foldmethod=indent
set foldcolumn=3
set foldlevel=2     " fold everything deeper than 0
set foldnestmax=3   " dont fold everything deeper than 2
set colorcolumn=80

let g:GenCscopeCmdC = "find . -name \"*.[ch]\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=C++"

let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC
