function! Addshheader()
    if getfsize(@%) <= 0
        execute "norm i#!/bin/bash\n\n"
    endif
endfunction
"au BufNewFile *.py call Addpyheader()
call Addshheader()
