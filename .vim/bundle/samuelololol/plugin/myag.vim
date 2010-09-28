"ack.vim
"setlocal grepprg=ag\ --vimgrep\ $*
"setlocal grepformat=%f:%l:%c:%m

let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_format="%f:%l:%m"
let g:ag_apply_qmappings=1
let g:ag_mapping_message=1
