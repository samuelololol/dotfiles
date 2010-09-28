"Synchronize NERDTree with current opened tab file path
nmap <leader>r :NERDTree %<cr>
let NERDTreeIgnore = ['\.pyc$', '.swp', '\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

