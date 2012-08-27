"""""""""""""""
"tags file detection
"
"""""""""""""""
if has("unix")
    let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
    let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
    set csprg=/usr/local/bin/cscope
    set cscopeprg=/usr/local/bin/cscope
else
	set csprg=/usr/bin/cscope
endif


if has("tags")
    set tags=./tags,tags 
endif


"""""""""""""""
"cscope.out file detection
"""""""""""""""
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif

