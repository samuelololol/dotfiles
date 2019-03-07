"keep the sign gutter open
let g:ale_sign_column_always = 1
let g:ale_linters = {'python': ['flake8', ]}

"lint on enter
let g:ale_lint_on_enter = 1

" use quickfix instead of loclist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0 "close after resolved

" custom format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %code% %s [%severity%]'
