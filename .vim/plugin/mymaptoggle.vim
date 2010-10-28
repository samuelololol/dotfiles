"""""""""""""""
" Map key to toggle opt
"
"""""""""""""""
function! MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command! -nargs=+ MapToggle call MapToggle(<f-args>)

 
" set F5 F6 by MapToggle-function in mymaptoggle.vim
au BufNew MapToggle <F6> scrollbind
au BufNew MapToggle <F5> nopaste

" set F5 F6 by MapToggle-function in mymaptoggle.vim
MapToggle <F6> scrollbind
MapToggle <F5> nopaste

