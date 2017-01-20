"let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
"html
let g:tagbar_type_html = {
    \ 'ctagstype' : 'html',
    \ 'kinds' : [
        \ 'f:JavaScript funtions',
        \ 'a:named anchors',
        \ 'r:html',
        \ 'b:body',
        \ 'o:object',
        \ 'c:class',
    \ ],
    \ 'ctagsargs' : '-f - --html-kinds=fabr'
    \ }

"markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

"scala
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'scala',
    \ 'sro'       : '.',
    \ 'kinds'     : [
      \ 'p:packages',
      \ 'T:types:1',
      \ 't:traits',
      \ 'o:objects',
      \ 'O:case objects',
      \ 'c:classes',
      \ 'C:case classes',
      \ 'm:methods',
      \ 'V:values:1',
      \ 'v:variables:1'
    \ ]
\ }

"makefile
let g:tagbar_type_make = {
            \ 'kinds':[
                \ 'm:macros',
                \ 't:targets'
            \ ]
\}
