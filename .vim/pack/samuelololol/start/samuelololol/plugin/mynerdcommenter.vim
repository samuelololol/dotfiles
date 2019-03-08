" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
"none, left, start, both
let g:NERDDefaultAlign = 'both'

" Add your own custom formats or override the defaults
" samuel: python
let g:NERDCustomDelimiters = { 'c': { 'left': '#'} }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let mapleader=","
let g:malleader=","
