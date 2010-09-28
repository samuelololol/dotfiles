" setlocal textwidth=80
" "setlocal colorcolumn=80
" "highlight both line 80 and range(81,999)
" let &colorcolumn="80,".join(range(81,999),",")

function! Addpyheader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python\n# -*- coding: utf-8 -*-\n"
        execute "norm i__date__ = '" . strftime("%b %d, %Y") "'\n"
        execute "norm i__author__ = '" . $USER . "'\n\n"
        execute "norm i\n"
        execute "norm idef main():\n\tpass\n\n"
        execute "norm iif __name__ == '__main__':\nmain()"
    endif
endfunction
"au BufNewFile *.py call Addpyheader()
call Addpyheader()

let g:GenCscopeCmdC = "find . -name \"*.py\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=Python"
"ctags for Python projects
"ctags -R \
"--language-force=Python \
"-h ".py" \
"--exclude=.git \
"--exclude=\*.pyc \
"--exclude=\*.js \
"--extra=+q \
"<PYTHONPATH exported path> \
"/usr/local/Cellar/python/2.7.12/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages

let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC

let g:NERDTreeSortOrder = ['\/$', '\.py$', '*', '\.swp$',  '\.bak$', '\~$']

"vim-flake8
let g:flake8_quickfix_height=10
if executable('flake8')
    autocmd BufWritePost *.py call Flake8()
endif

"                    ___
" Documentation     /III\
" With             /{= =}\__
" Sphinx           |_\-/_|  \
"                 |-| |-|{ |
"                 /-_--_'-nn/
"                nnn/  nnn|}
"
"
"

"knight
"
"                      Now I am ready for that dragon!
"                      I have a horse and armour!
"             ,      ,  /
"        ____/~\    ~O
"    ,;~( )_  )'' /~()'-{---
"       )/  |(     /~)
"       ~    ~     ~ ~


