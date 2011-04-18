" 1. Popup on <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"

function! s:check_back_space()"{{{
let col = col('.') - 1
return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}


" 2. Auto complete to common string and show available variants (if any).
inoremap <expr><C-l> neocomplcache#complete_common_string()

" 3. Highlighting first candidate.
let g:neocomplcache_enable_auto_select = 1
" 4. <CR>: close popup and save indent.
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" snippets feature
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_KeywordCompletionStartLength = 1
let g:NeoComplCache_MinKeywordLength = 3
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_SmartCase = 1

