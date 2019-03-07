let g:check_tailing_white_space=2
"0: disalbe
"1: enable by confirmation
"2: force enable

"create hightlight group
highlight ExtraWhitespace ctermbg=196

"the following pattern will match trailing whitespace, except when typing at the end of a line.
"
"If you use this alternate pattern, you may want to consider using the following
"autocmd to let the highlighting show up as soon as you leave insert mode after
"entering trailing whitespace:
"match ExtraWhitespace /\s\+\%#\@<!$/
match ExtraWhitespace '\s\+$'
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
":match ExtraWhitespace /\s\+$/ " Show trailing whitespace:
":match ExtraWhitespace /\s\+$\| \+\ze\t/ " Show trailing whitespace and spaces before a tab:
":match ExtraWhitespace /[^\t]\zs\t\+/ " Show tabs that are not at the start of a line:
":match ExtraWhitespace /^\t*\zs \+/ " Show spaces used for indenting (so you use only tabs for indenting).
":match " Switch off :match highlighting.

" Removes trailing spaces
function! TrimTailingWhiteSpace()
    %s/\s\+$//e
endfunction

function! AutoTrimTailingWhiteSpace()
    if &ft != 'qf'
        if g:check_tailing_white_space == 2
            :call TrimTailingWhiteSpace()
        elseif confirm('Remove tailing spaces?', "&Yes\n&No", 1)==1
            :call TrimTailingWhiteSpace()
        endif
    endif
endfunction


"map key to TrimTailingWhiteSpace() function
"nnoremap <silent> <Leader>rtws :call TrimTailingWhiteSpace()<CR>

if g:check_tailing_white_space > 0
    "enable on-write trigger
    "autocmd FileType markdown,python,c,cpp,vim autocmd FileWritePre    * :call TrimTailingWhiteSpaceC()
    "autocmd FileType markdown,python,c,cpp,vim autocmd FileAppendPre   * :call TrimTailingWhiteSpaceC()
    "autocmd FileType markdown,python,c,cpp,vim autocmd FilterWritePre  * :call TrimTailingWhiteSpaceC()
    autocmd FileType markdown,python,c,cpp,vim,sh autocmd BufWritePre <buffer> :call AutoTrimTailingWhiteSpace()
endif
