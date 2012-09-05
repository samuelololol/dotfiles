"""""""""""""""
"tags file detection
"
"""""""""""""""
if has("mac")
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
    set csto=1 "search tags before cscope database
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
"""""""""""""""
" my ctags and cscope generator for *.c /*.cpp files
"""""""""""""""
let s:CleanCscop = "rm -f cscope.files cscope.in.out cscope.out cscope.po.out"
let s:CleanCtags = "rm -f tags"

function! CSCTGenC(opt)
    if a:opt  == "cscope"
        echom "cscope meta-files generating ..."
        silent exec "!" . g:GenCscopeCmd
        echom "cscope.out generation is done."

    	set csprg=/usr/bin/cscope
    	set csto=1 "search tags before cscope database
    	set cst
        set nocsverb
        cs add cscope.out
        set csverb
        echom "cscope.out is loaded."

    elseif a:opt == "ctags"
        echom "ctags meta-files generating ..."
        silent exec "!" . g:GenCtagsCmd
        echom "tag-file generation is done."
        set tags+=./tags
        echom "cscope.out is loaded."
    elseif a:opt == "clean"
        silent exec "!" . s:CleanCscop
        silent exec "!" . s:CleanCtags
        echom "clean all ctags-related/cscope-related files."
    elseif a:opt == "cscopeclean"
        silent exec "!" . s:CleanCscop
        echom "clean all cscope-related files."
    elseif a:opt == "ctagsclean"
        silent exec "!" . s:CleanCtags
        echom "clean all ctags-related files."
    else
        echom "Error,usage  :CSCTGenC <ctags/cscope>, tags/cscope.out"
    endif
endfunction
command! -nargs=1 CSCTGenC call CSCTGenC(<f-args>)

"""""""""""""""
"ctags and cscope command in shell"
"
"""""""""""""""
"Usage: cscope [-bcCdehklLqRTuUvV] [-f file] [-F file] [-i file] [-I dir] [-s dir]
"              [-p number] [-P path] [-[0-8] pattern] [source files]
"
"              -b            Build the cross-reference only.
"              -k            Kernel Mode - don't use /usr/include for #include
"                            files.
"              -q            Build an inverted index for quick symbol
"                            searching.
"              -R            Recurse directories for files.



"Exuberant Ctags 5.7, Copyright (C) 1996-2007 Darren Hiebert
"Compiled: Oct 16 2008, 13:55:22
"  Addresses: <dhiebert@users.sourceforge.net>, http://ctags.sourceforge.net
"  Optional compiled features: +wildcards, +regex
"
"Usage: ctags [options] [file(s)]
"  -R   Equivalent to --recurse.
