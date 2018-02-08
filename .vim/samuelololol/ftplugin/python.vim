" line width & colorcolumn
setlocal textwidth=79
let &colorcolumn="80,".join(range(81,999),",")

function! Addpyheader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python2\n# -*- coding: utf-8 -*-\n"
        execute "norm i__date__ = '" . strftime("%b %d, %Y") "'\n"
        execute "norm i__author__ = '" . $USER . "'\n\n"
        execute "norm i\n"
        execute "norm idef main():\n\tpass\n\n\n"
        execute "norm iif __name__ == '__main__':\nmain()"
    endif
endfunction
call Addpyheader()

let g:GenCscopeCmdC = "find . -name \"*.py\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=Python"
let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC

let g:NERDTreeSortOrder = ['\/$', '\.py$', '*', '\.swp$',  '\.bak$', '\~$']

"vim-flake8
let g:flake8_quickfix_height=10
if executable('flake8')
    autocmd BufWritePost *.py call Flake8()
endif
