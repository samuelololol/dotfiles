"check whether a git repo folder
let g:samuelololol_isgit = 0
let gitdir=system("git rev-parse --show-toplevel 2>&1 /dev/null;")
let isnotgitdir=matchstr(gitdir, '^fatal:.*')

if empty(isnotgitdir)
    let g:samuelololol_isgit = 1
endif
