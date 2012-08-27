set foldmethod=indent
set foldcolumn=3
set foldlevel=2     " fold everything deeper than 0
set foldnestmax=3   " dont fold everything deeper than 2
set colorcolumn=80
"""""""""""""""
" my ctags and cscope generator for *.c /*.cpp files
"""""""""""""""
function! CSCTGenC(opt)
    if a:opt  == "cscope"
        "!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" > cscope.files
        !find . -name "*.[ch]" > cscope.files
        !find . -name "*.cpp" >> cscope.files
        !cscope -bkq -i cscope.files
        echo "cscope.out generation is done."

    	set csprg=/usr/bin/cscope
    	set csto=0
    	set cst
    	set nocsverb
        cs add cscope.out
    	set csverb
        echo "cscope.out is loaded."

        elseif a:opt == "ctags"
            !/usr/local/Cellar/ctags/5.8/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
            echo "tag-file generation is done."
            set tags+=./tags
            echo "cscope.out is loaded."
        elseif a:opt == "clean"
            !rm -f cscope.files cscope.in.out cscope.out cscope.po.out tags
            echo "clean all ctags-related/cscope-related files."
        elseif a:opt == "cscopeclean"
            !rm -f cscope.files cscope.in.out cscope.out cscope.po.out
            echo "clean all cscope-related files."
        elseif a:opt == "ctagsclean"
            !rm -f tags
            echo "clean all ctags-related files."
        else
            echo "Error,usage  :CSCTGenC <ctags/cscope>, tags/cscope.out"
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
