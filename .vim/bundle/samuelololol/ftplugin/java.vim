setlocal foldcolumn=3
setlocal omnifunc=javacomplete
let g:GenCscopeCmdJava = "!find . -name \"*.java\" >> cscope.files && !cscope -bkq -i cscope.files"
let g:GenCtagsCmdJava = "!ctags -R --language-force=java --fields=+iaSm --extra=+q --language-force=java"

let g:GenCscopeCmd = g:GenCscopeCmdJava
let g:GenCtagsCmd = g:GenCtagsCmdJava
