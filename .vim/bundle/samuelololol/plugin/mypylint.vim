"set options
let g:pylint_onwrite = 1
let g:pylint_show_rate = 0

"disable or exception when py code is no error
"let g:pylint_signs = 1

"compile
autocmd FileType python compiler pylint

"replace makeprg
autocmd FileType python set makeprg=(echo\ '[%]';pylint\ --rcfile=~/.pylintrc\ --msg-template=\"{msg_id}:{line},{column}:\ {msg}\"\ '%'\\\|grep\ -E\ -e\ \'^\([WECR][0-9]\\\|Your\ code\)\'\\\|sed\ -e\ \'s/^E/1\ E\ /\'\ -e\ \'s/^W/2\ W\ /\'\ -e\ \'s/^C/3\ C\ /\'\ -e\ \'s/^R/4\ R\ /\'\ \\\|sort)

