" line width & colorcolumn
setlocal textwidth=79
let &colorcolumn="80,".join(range(81,999),",")


":help cinoptions-values
setlocal cinoptions=+4,(0,(s,U1,(0,w1,(0,W4,(s,j1,(s,m1

function! Addpyheader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python\n"
        execute 'norm i"""' . "\n"
        execute 'norm iDescription: ' . "\n\n"
        execute 'norm iDate: ' . strftime("%b %d, %Y") . "\n"
        execute 'norm iAuthor: ' . $USER . "\n"
        execute 'norm i"""' . "\n"
        execute 'norm i' . "\n\n"
        execute 'norm idef main():' . "\n\t"
        execute 'norm a"""Main function"""' . "\n"
        execute 'norm i    pass' . "\n\n\n"
        execute "norm iif __name__ == '__main__':\nmain()"
        execute "norm 13k$"
    endif
endfunction
call Addpyheader()

let g:NERDTreeSortOrder = ['\/$', '\.py$', '*', '\.swp$',  '\.bak$', '\~$']

"vim-flake8
let g:flake8_quickfix_height=10
if executable('flake8')
    autocmd BufWritePost *.py call Flake8()
endif

"TODO: prepare to deprecated below
let g:GenCscopeCmdC = "find . -name \"*.py\" > cscope.files && cscope -bkq -i cscope.files"
let g:GenCtagsCmdC = "ctags -R --c-kinds=+p --fields=+iaS --extra=+q --language-force=Python"
let g:GenCscopeCmd = g:GenCscopeCmdC
let g:GenCtagsCmd = g:GenCtagsCmdC
