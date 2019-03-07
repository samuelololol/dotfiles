" Vim color file
" Maintainer:	samuelololol <samuelololol[at]gmail.com/>
" Last Change:	Dec 7, 2016
"
" Description:  Customized diff_scheme for vimdiff
colorscheme jellybeans
let colors_name = "diff_scheme"
"hi DiffText   ctermbg=000910 ctermfg=19
hi DiffText   cterm=reverse ctermbg=19 ctermfg=184
"hi DiffText   ctermbg=19 ctermfg=184
hi DiffDelete cterm=reverse ctermfg=16 ctermbg=52 guifg=#220000 guibg=#220000
"hi DiffAdd    cterm=reverse ctermbg=233
hi DiffChange ctermbg=19
"hi DiffChange cterm=reverse ctermbg=19
"hi DiffChange ctermbg=17    guibg=#100920
"hi CursorLine ctermbg=darkblue ctermfg=white
"hi CursorLine ctermfg=233 ctermbg=lightblue
set colorcolumn=0
echom "change colorscheme to diff_scheme"
