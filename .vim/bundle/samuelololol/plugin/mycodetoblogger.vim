function! CodeToBlogger()
    TOhtml
    exe "normal! gg7ddGk2ddgg"
    exe "normal! C<pre style=\"background-color: #000000; border: 1px dashed rgb(153, 153, 153); color: white; font-family: Andale Mono,Lucida Console,Monaco,fixed,monospace; font-size: 12px; line-height: 14px; overflow: auto; padding: 5px; width: 98%;\"><code>"
    exec "normal! Go</code></pre>"
    %s/<br>$//g
    echo "google blogger post --tags \"<tag1>,<tag2>\" --title \"<title>\" file"
    endfunction

command! -nargs=0 CodeToBlogger call CodeToBlogger()


