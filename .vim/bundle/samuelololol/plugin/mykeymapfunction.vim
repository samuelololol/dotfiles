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


""" function switch number mode
function! ToggleLineNumbers()
  if &number == 1
    set relativenumber
  else
    set number
  end
endfunction

""<leader>; switch line number mode
"map <leader>; :call ToggleLineNumbers()<CR>
"" Autocmds to switch number mode based on Vim Mode
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber




"""""""""""""""
" MoveTo* functions
"
"""""""""""""""
"""""""""""""""
" MoveToPrevTab()
"
"""""""""""""""
function! MoveToPrevTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    vsp
  else
    close!
    exe "0tabnew"
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

"""""""""""""""
" MoveToNextTab()
"
"""""""""""""""
function! MoveToNextTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    vsp
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc
