" check if mac ox system
" if has("mac")
"     let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"     let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
" endif

"let g:Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1


"Languages
"Golang
let s:tlist_def_go_settings ='go;f:function;p:package;t:struct;c:const;v:vars'
 
"markdown language
let s:tlist_def_markdown_settings = 'markdown;h:heading'

"scala
let s:tlist_def_scala_settings = 'scala;t:trait;c:class;T:type;m:method;C:constant;l:local;p:package;o:object'

"swift
let s:tlist_def_swift_settings = 'Swift;V:variable;F:function;C:class;S:struct;P:protocol;E:enum'


