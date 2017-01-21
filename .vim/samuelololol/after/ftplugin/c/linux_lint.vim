"linux kernel coding style
"so ~/dotfiles/.vim_partial/vim-linux-coding-style/plugin/linuxsty.vim
"LinuxCodingStyle
if g:samuel_coding_style == 1

	function! KernelLint()
	    echo "Check Linux Kernel coding style"
	    silent make
	    cwindow 10
	endfunction

	setlocal makeprg=~/dotfiles/commands/checkpatch.pl\ --terse\ --file\ --no-tree\ --no-signoff\ --strict\ --no-summary\ --ignore\ CAMELCASE\ --allow_typedef\ %
	autocmd BufWritePost <buffer> :call KernelLint()

	"GNU Coding Standards: https://gcc.gnu.org/wiki/FormattingCodeForGCC
	setlocal cindent
	setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
	setlocal shiftwidth=2
	setlocal softtabstop=2
	setlocal textwidth=79
	setlocal fo-=ro fo+=cql
	setlocal colorcolumn=79
	let &colorcolumn="".join(range(79,999),",")

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
endif
