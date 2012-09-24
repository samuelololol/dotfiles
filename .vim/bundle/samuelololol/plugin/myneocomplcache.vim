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
"    (disable: use <tab> to select the first match)
"let g:neocomplcache_enable_auto_select = 1

" 4. <CR>: close popup and save indent.
"inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><BS> neocomplcache#smart_close_popup() . "\<C-h>"



" compitible with auto-pairs plugin"
let g:AutoPairsMapCR = 0

" snippets feature: 
" use <CR> to choose the candidates including the expanding behavior
" the worst case is using auto-paris return function


"1. neocomplcache author recommended version for <TAB>
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"2. auto-pairs author recommended version"
imap <expr><CR> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>\<Plug>AutoPairsReturn"
"3. my version for <CR>
imap <expr><CR> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_jump)" : pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"

let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_KeywordCompletionStartLength = 1
let g:NeoComplCache_MinKeywordLength = 3
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_SmartCase = 1
let g:neocomplcache_enable_camel_case_completion = 1


" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 4
