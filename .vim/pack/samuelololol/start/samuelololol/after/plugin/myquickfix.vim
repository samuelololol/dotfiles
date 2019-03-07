" hotkey in quickfix window
" t: open in new tab
" h: split
" v: vertical split

nnoremap <leader>q :call asyncrun#quickfix_toggle(10)<cr>
