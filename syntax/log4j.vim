" Apache log4j and log4php syntax file.
" Language:    Apache log4j/log4php log file
" Maintainer:  Andrei Nicholson <contact@andreinicholson.com>
" Last Change: 2012-07-06
" Version:     0.3
"
" While it's possible to define any sort of pattern via PatternLayout (log4j)
" or LoggerLayoutPattern (log4php), this syntax file focuses on the default
" TTCC layout TTCC layout with conversion pattern set to:
"
"     %d{yyyy-mm-dd HH:ii:ss,u} [%t] %p %c %x - %m%n

if exists("b:current_syntax")
  finish
endif

syn case ignore

" Use 8601 date
syn match log4jHeader "^\v20[0-9]{2}(-[0-9]{2}){2} " contains=log4jDate
syn match log4jDate   contained "^\v20[0-9]{2}(-[0-9]{2}){2} [0-9]{2}(:[0-9]{2}){2}"

syn case match
syn match log4jDebug "\vDEBUG .+$"
syn match log4jError "\vERROR .+$"
syn match log4jFatal "\vFATAL .+$"
syn match log4jInfo  "\vINFO .+$"
syn match log4jTrace "\vTRACE .+$"
syn match log4jWarn  "\vWARN .+$"

hi log4jDate ctermfg=2 gui=bold guifg=#00c000
hi log4jDebug ctermfg=10 guifg=SeaGreen
hi log4jError ctermfg=12 guifg=Red
hi log4jFatal ctermfg=0 ctermbg=12 guifg=black guibg=Red
hi log4jInfo  guifg=#ffffff guibg=#000000
hi log4jTrace ctermfg=9 guifg=Cyan
hi log4jWarn  ctermfg=14 guifg=Yellow

let b:current_syntax = "log4j"
