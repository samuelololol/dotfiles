" Vim color file
" Maintainer:	samuelololol <samuelololol[at]gmail.com/>
" Last Change:	Nov 8, 2012
"
" Nothing sepcial here, I just colorize the pop-up menu color 
" as GUNDAM does!!!!!
"

hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "gundam"

" vim: sw=2
" set color of pop-up menu"
" 0:
" 2:green, 3:yello, 4:blue, 5:purple,
" 6:green-blue, 7: white, 8: black, 9: red
"highlight   clear
highlight   Pmenu         ctermfg=7 ctermbg=4
highlight   PmenuSel      ctermfg=7 ctermbg=3
highlight   PmenuSbar     ctermfg=7 ctermbg=0
highlight   PmenuThumb    ctermfg=0 ctermbg=7
