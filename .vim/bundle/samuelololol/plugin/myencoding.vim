"encoding
" 檔案編碼,檔案編碼清單 (file encoding)(file encoding list)
setlocal fenc=utf-8
" fileencodings
setlocal fencs=utf-8,big5,gbk,euc-jp,latin-1
" 內部編碼      (encoding inside Vim)
if !has('nvim')
    setlocal enc=utf-8
endif
" Terminal編碼  (terminal encoding)
setlocal tenc=utf-8

