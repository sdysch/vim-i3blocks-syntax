" Vim syntax file for i3blocks
" See http://vim.wikia.com/wiki/Creating_your_own_syntax_files#Install_the_syntax_file
if exists("b:current_syntax")
  finish
endif

syn region i3blocksBlockletRegion start='\[' end='\]'
syn region celExpr start='"' end='"' 
syn region celExpr start="'" end="'" 

syn match celComment "#.*$"
syn match command    "command=.*$"
syn match label      "label=.*$"
syn match full_text  "full_text=.*$"
syn match color      "color=.*$"
syn match interval   "interval=.*$"
syn match interval   "separator=.*$"
syn match interval   "signal=.*$"
syn match markup     "markup=.*$"

highlight link i3blocksBlockletRegion Statement
highlight link celComment             Comment
highlight link command                Identifier
highlight link color                  Type
highlight link celExpr                String

highlight link label                  ModeMsg
highlight link full_text              ModeMsg
highlight link interval               ModeMsg
highlight link separator              ModeMsg
highlight link signal                 ModeMsg
highlight link markup                 ModeMsg


let b:current_syntax = "i3blocks"
