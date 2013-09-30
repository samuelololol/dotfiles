set laststatus=2
"edit from pct's statusline
" 設定狀態列訊息
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

" %1* -> User1's highlight, %2*->User2's highlight
" =   -> Separation point between left and right aligned items.
" <   -> Where to truncate line if too long.  Default is at the start.
set statusline=%6*%<\ %1*[%F]
set statusline+=\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}]%m " file format
set statusline+=%6*%=\ %6*%y%6*\ %3*%l%6*\/%L,\ %3*%c%6*\ \<%2*%P%6*\>

