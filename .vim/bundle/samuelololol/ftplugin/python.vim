set colorcolumn=72
set textwidth=72

function! Addpyheader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python\n# -*- coding: utf-8 -*-\n"
    endif
endfunction
"au BufNewFile *.py call Addpyheader()
call Addpyheader()

let g:GenCscopeCmdC = "find . -name \"*.py\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=Python"

let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC

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


