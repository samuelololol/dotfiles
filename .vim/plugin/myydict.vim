" Put the cursor under the word, and press CTRL-K,
" it will search that word in http://tw.dictionary.yahoo.com/
" and output the result in console
"
" (*) you may use screen or tmux to copy the text into vim
map <C-K> viwy:!~/ydict-read-only/ydict -w<C-R>"<CR>


"re-map the <K> keyworprg to yadictto look up in yahoo dictionary manually
set keywordprg=~/ydict-read-only/ydict 
