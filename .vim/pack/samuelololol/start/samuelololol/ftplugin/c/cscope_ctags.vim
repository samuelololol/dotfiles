let g:GenCscopeCmdC = "find . -name \"*.[ch]\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=C++"

let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC
