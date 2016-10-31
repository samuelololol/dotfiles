let g:check_tailing_white_space=1
"0: disalbe
"1: enable by confirmation
"2: force enable

match ErrorMsg '\s\+$'

" Removes trailing spaces
function! TrimTailingWhiteSpace()
    %s/\s\+$//e
endfunction

function! AutoTrimTailingWhiteSpace()
    if g:check_tailing_white_space == 2
        :call TrimTailingWhiteSpace()
    elseif confirm('Remove tailing spaces?', "&Yes\n&No", 1)==1
        :call TrimTailingWhiteSpace()
    endif
endfunction


"map key to TrimTailingWhiteSpace() function
"nnoremap <silent> <Leader>rtws :call TrimTailingWhiteSpace()<CR>

if g:check_tailing_white_space > 0
    "enable on-write trigger
    "autocmd FileType markdown,python,c,cpp,vim autocmd FileWritePre    * :call TrimTailingWhiteSpaceC()
    "autocmd FileType markdown,python,c,cpp,vim autocmd FileAppendPre   * :call TrimTailingWhiteSpaceC()
    "autocmd FileType markdown,python,c,cpp,vim autocmd FilterWritePre  * :call TrimTailingWhiteSpaceC()
    autocmd FileType markdown,python,c,cpp,vim,sh autocmd BufWritePre     * :call AutoTrimTailingWhiteSpace()
endif

