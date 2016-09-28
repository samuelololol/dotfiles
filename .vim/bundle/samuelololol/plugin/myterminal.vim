"terminal setting
"if $TERM == 'screen'
"  set term=xterm
"endif
"setting terminal as xterm-256color
if !has('nvim')
    set term=screen-256color
endif
set t_Co=256

