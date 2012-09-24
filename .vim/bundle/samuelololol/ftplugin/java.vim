"setlocal foldcolumn=3
"setlocal omnifunc=javacomplete

" java Cscope/Ctags meta files generating command
let g:GenCscopeCmdJava = "find . -name \"*.java\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdJava = "ctags -R --language-force=java --fields=+iaSm --extra=+q"
let g:GenCscopeCmd = g:GenCscopeCmdJava
let g:GenCtagsCmd = g:GenCtagsCmdJava

" java quickfix format

setl efm=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
setl efm=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%#
setl errorformat=%Z%f:%l:\ %m,%A%p^,%-G%*[^sl]%.%#
setl makeprg=javac\ %\ 2>&1\ \\\|\ vim-javac-filter
