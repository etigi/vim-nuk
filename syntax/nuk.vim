if exists("b:current_syntax")
  finish
endif

syn keyword nukBuiltin call dup drop nop swap stack print
syn keyword nukBuiltin head tail len reverse sort join
syn keyword nukLooping loop for break continue
syn keyword nukConditional if
syn keyword nukDefine module func var const
syn keyword nukImport load export
syn match nukWord "\v[A-za-z_][A-Za-z_0-9]*"

syn keyword nukBoolean true false

syn region nukComment start="#" end="$" oneline
syn region nukString start=+"+ end=+"+ skip=+\\"+
syn region nukString start=+'+ end=+'+ skip=+\\'+
syn region nukTypeSig start=+:`+ end=+`+

syn match nukOperator "\v\+"
syn match nukOperator "\v\-"
syn match nukOperator "\v\/"
syn match nukOperator "\v\%"
syn match nukOperator "\v\*"
syn match nukOperator "\v\*\*"
syn match nukOperator "\v\.\."
syn match nukOperator "\v\&"
syn match nukOperator "\v\&\&"
syn match nukOperator "\v\|"
syn match nukOperator "\v\|\|"
syn match nukOperator "\v\!\!"
syn match nukOperator "\v\<"
syn match nukOperator "\v\<\<"
syn match nukOperator "\v\<\="
syn match nukOperator "\v\>"
syn match nukOperator "\v\>\>"
syn match nukOperator "\v\>\="
syn match nukOperator "\v\=\="
syn match nukOperator "\v\="
syn match nukOperator "\v\^"

syn match nukQuotes "\v\["
syn match nukQuotes "\v\]"
syn match nukSeparator "\v\:\:"
syn match nukSeparator "\v\;"

syn match nukNumber "\v[+-]?[0-9]+"

highlight link nukBoolean NukBoolean
highlight link nukBuiltin NukBuiltin
highlight link nukComment NukComment
highlight link nukConditional NukBlock
highlight link nukLooping NukBlock
highlight link nukDefine NukBlock
highlight link nukNumber NukLiteral
highlight link nukOperator NukOperator
highlight link nukSeparator NukBlock
highlight link nukString NukString
highlight link nukQuotes NukBlock
highlight link nukWord NukWord
highlight link nukImport NukImport
highlight link nukTypeSig NukTypeSig

highlight NukBlock ctermfg=244
highlight NukBoolean ctermfg=28
highlight NukBuiltin ctermfg=75 "73
highlight NukComment ctermfg=143
highlight NukImport ctermfg=44
highlight NukLiteral ctermfg=172
highlight NukString ctermfg=184
highlight NukOperator ctermfg=160
highlight NukWord ctermfg=117
highlight NukTypeSig ctermfg=205

let b:current_syntax = "nuk"
