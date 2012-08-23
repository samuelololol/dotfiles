set colorcolumn=72
function PyHeader()
    if getfsize(@%) <= 0
        execute "norm i#!/usr/bin/env python\n# -*- coding: utf-8 -*-\n"
    endif
endfunction
call PyHeader()
""au BufNewFile *.py call PyHeader()
