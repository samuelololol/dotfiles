let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"go desired path and $touch .ctrlp, make it as root
let g:ctrlp_root_markers = ['.ctrlp']

setlocal wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc  " MacOSX/Linux
"setlocal wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

setlocal wildignore+=*.o "C/C++
setlocal wildignore+=*.pyc "Python
setlocal wildignore+=*.class "Java
setlocal wildignore+=*.tar,*.tgz,*.tbz2,*.zip,*.rar "binaries

"open file in new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \}

"not working :(
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"work fine, but I've not tried 'link' key in g:ctrlp_custom_ignore object
"let g:ctrlp_custom_ignore = {
"  \ 'dir': '\v[\/](UI|unittest)$',
"  \ 'file': '\v\.(js|css|html|tar)$',
"  \ }
