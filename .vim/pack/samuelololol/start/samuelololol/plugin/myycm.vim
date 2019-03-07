let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_strings=1
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_cache_omnifunc=0

let g:ycm_min_num_of_chars_for_completion=1

let g:ycm_confirm_extra_conf=0

" detect via os
" if has("unix")
"     if system('uname') =~ 'Darwin'
"         let g:ycm_python_binary_path='/usr/local/bin/python'
"         let g:ycm_path_to_python_interpreter='/usr/local/bin/python'
"     else
"         let g:ycm_python_binary_path='/usr/bin/python'
"         let g:ycm_path_to_python_interpreter='/usr/bin/python'
"     endif
" endif

" detect via file existence
" if filereadable("/usr/local/bin/python")
"     let g:ycm_python_binary_path='/usr/local/bin/python'
"     let g:ycm_path_to_python_interpreter='/usr/local/bin/python'
" else
"     let g:ycm_python_binary_path='/usr/bin/python'
"     let g:ycm_path_to_python_interpreter='/usr/bin/python'
" endif
let venv_python_path = system('which python')
let g:ycm_python_binary_path = venv_python_path
let g:ycm_path_to_python_interpreter = venv_python_path

let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'qf': 1,
      \}
