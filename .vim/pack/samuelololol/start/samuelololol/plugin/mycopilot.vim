"some setting here
Copilot enable

" key map
imap <silent><script><expr> <C-K> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true


" syntax
autocmd ColorScheme solarized highlight CopilotSuggestion guifg=#555555 ctermfg=8
