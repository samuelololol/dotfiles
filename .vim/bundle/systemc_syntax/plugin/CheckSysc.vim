" Vim plugin file for checking whether the given C++
" file describes a SystemC Module
"
" Maintainer:	Karthick Gururaj <stonnedsnake@yahoo.com>
" Last change:	Nov 30 2003
" Version:     1.0

" Check if the file is a SystemC file
fun SysC_or_CPP()
  let last_line_num = line("$")
  if last_line_num > 50
    let last_line_num = 50
  endif
  let cur_line_num = 1
  while (cur_line_num <= last_line_num)
    " Check for systemc keywords
    if getline(cur_line_num) =~? 'systemc\|SC_METHOD\|sc_module'
       return "sysc"
    endif
    let cur_line_num = cur_line_num + 1
  endwhile
  return "cpp"
endfun
