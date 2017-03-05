" search for next *current mark*
nmap <Leader>. <Plug>MarkSearchCurrentNext
nmap <Leader>> <Plug>MarkSearchCurrentPrev
"fallback to Vim's original * command, use:
nmap * <Plug>MarkSearchOrCurNext
nmap # <Plug>MarkSearchOrCurPrev

" set *current mark* as group N
nmap <Leader>1  <Plug>MarkSearchGroup1Next
nmap <Leader>2  <Plug>MarkSearchGroup2Next
nmap <Leader>3  <Plug>MarkSearchGroup3Next
nmap <Leader>4  <Plug>MarkSearchGroup4Next
nmap <Leader>5  <Plug>MarkSearchGroup5Next
nmap <Leader>6  <Plug>MarkSearchGroup6Next
nmap <Leader>7  <Plug>MarkSearchGroup7Next
nmap <Leader>8  <Plug>MarkSearchGroup8Next
nmap <Leader>9  <Plug>MarkSearchGroup9Next

" map for avoiding mapping conflict
nmap <Leader>x <Plug>MarkRegex
