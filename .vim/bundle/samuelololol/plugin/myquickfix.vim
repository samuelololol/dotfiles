"quickfix setting from c9s
" QUICKFIX WINDOW
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
    else
        copen 10
        let g:qfix_win = bufnr("$")
    endif
endfunction
nnoremap <leader>q :QFix<CR>


"enable/disable highlighting
let g:hier_enabled = 1

"QFEnter
let g:qfenter_open_map  = ['<CR>']
let g:qfenter_vopen_map = ['<Leader><CR>']
let g:qfenter_hopen_map = ['<Leader><Space>']
let g:qfenter_topen_map = ['<Leader><Tab>']
