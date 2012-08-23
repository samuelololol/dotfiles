set colorcolumn=72
function Addpyheader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python\n# -*- coding: utf-8 -*-\n"
    endif
endfunction
call Addpyheader()
""au BufNewFile *.py call Addpyheader()
