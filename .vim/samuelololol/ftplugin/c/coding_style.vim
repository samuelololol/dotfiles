" initial global settings
" g:samuel_coding_style
"   0: Default: non
"   1: linux
"   2: samuel
let g:samuel_coding_style=0
let g:samuel_makeprg_modified=0
autocmd BufWritePost <buffer> :call s:CheckCodingStyle()


function! s:LinuxCodingStyle()
    "GNU Coding Standards: https://gcc.gnu.org/wiki/FormattingCodeForGCC
    "setlocal cindent
    "setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal fo-=ro fo+=cql
    setlocal textwidth=79
    setlocal colorcolumn=79

    "samuel (:help cinoptions-values)
    setlocal tabstop=8 " read \t to 8 spaces
    setlocal shiftwidth=8  " indent size: 8 spaces
    setlocal softtabstop=8  " <BS>,<TAB> in insert mode: 8 spaces

    setlocal noet
    setlocal cindent
    setlocal cinoptions=t0,(0,u0,Ws,)100,:0
    setlocal smarttab
    setlocal smartindent
    setlocal autoindent
    let &colorcolumn="".join(range(79,999),",")

    "setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt
    let g:samuel_makeprg_modified=1
endfunction


function! s:SamuelCodingStyle()
    so ~/.vim/samuelololol/plugin/mycodingstyle.vim
    "setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE,LEADING_SPACE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt\ %
    setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --ignore\ NEW_TYPEDEFS,CAMELCASE,LEADING_SPACE\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --codespellfile\ ~/dotfiles/commands/spelling.txt
    let g:samuel_makeprg_modified=1
endfunction


function! s:DefaultCodingStyle()
    so ~/.vim/samuelololol/plugin/mycodingstyle.vim
    setlocal makeprg=make
    let g:samuel_makeprg_modified=0
endfunction


function! s:SetCodingStyle(...)
    let l:style = 0
    if a:0 > 0                                       " arg counts > 0
        "echom "coding style?" . a:1
        if a:1 == 2 || a:1 == "samuel"               " a:1 stands for first arg
            echom "Set coding style to => samuel"
            let l:style = 2
            call s:SamuelCodingStyle()
        elseif a:1 == 1 || a:1 == "Linux"
            echom "Set coding style to => Linux"
            let l:style = 1
            call s:LinuxCodingStyle()
        else
            echom "Set coding style to => Default"
            let l:style = 0
            call s:DefaultCodingStyle()
        endif
        let g:samuel_coding_style = l:style
    endif
endfunction
command! -nargs=? -complete=customlist,s:ListStyles SetCodingStyle call s:SetCodingStyle(<f-args>)
function! s:ListStyles(A,L,P)
    return ['Default(Non)', 'Linux', 'samuel']
endfun


function! s:CheckCodingStyle(...)
    if g:samuel_makeprg_modified == 0
        echom "g:samuel_coding_style not set."
        return
    endif

    let l:original_style = g:samuel_coding_style

    if a:0 > 0
        call s:SetCodingStyle(a:1)
    endif

    "silent make
    AsyncRun -program=make @ %
    cwindow 10

    call s:SetCodingStyle(l:original_style)
endfunction
