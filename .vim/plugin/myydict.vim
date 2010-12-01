" Normal mode:
"     Put the cursor under the word, and press CTRL-K,
" it will search that word in http://tw.dictionary.yahoo.com/
" and output the result in console
nmap <C-K> viwy:!~/ydict-read-only/ydict -w<C-R>"<CR>

" Virtual mode:
"     Select your phrase, and press CTRL-K
" it will search that word in http://tw.dictionary.yahoo.com/
" and output the result in console
vmap <C-K> y:!~/ydict-read-only/ydict -w "<C-R>""<CR>

"re-map the <K> keyworprg to yadictto look up in yahoo dictionary manually
set keywordprg=~/ydict-read-only/ydict 
