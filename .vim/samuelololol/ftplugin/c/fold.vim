" setlocal cindent
" setlocal foldmethod=indent
" "setlocal foldcolumn=3
" setlocal foldlevel=3     " fold everything deeper than 0
" setlocal foldnestmax=4   " dont fold everything deeper than 2


"modified from: http://learnvimscriptthehardway.stevelosh.com/chapters/49.html
function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
endfunction

function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
endfunction

function! GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif this_indent != 0 && next_indent > this_indent  "ignore function or struct
        return '>' . next_indent
    endif
endfunction

setlocal cindent
"setlocal foldmethod=indent
"setlocal foldcolumn=3
setlocal foldlevel=3     " fold everything deeper than 0
setlocal foldnestmax=4   " dont fold everything deeper than 2

setlocal foldmethod=expr
setlocal foldexpr=GetPotionFold(v:lnum)
