set sw=2 " no of spaces for indenting
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..

let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1

let g:GenCtagsCmdC = "ctags -R --list-kinds=JavaScript"
let g:GenCtagsCmd = g:GenCtagsCmdC

