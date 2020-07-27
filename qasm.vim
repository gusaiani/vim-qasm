" Vim syntax file
" Language: QASM
" Maintainer: Gustavo Saiani <gustavo@poe.ma>
" Latest Revision: 8 July 2020

if exists("b:current_syntax")
  finish
endif

" Basic tokens
syntax match qSemicolon +;+
syntax match qNumber /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/

" Built-in functions
syntax keyword qKeyword ccx creg cx cz h include measure qreg x

" Comment tokens
syntax keyword qCommentTodo contained TODO FIXME XXX TBD
syntax region  qComment start=+//+ end=/$/ contains=qCommentTodo,@Spell extend keepend

" Protocol token
syntax region  qOpen start=+OPENQASM+ end=/$/  extend keepend

" Basics

" Comments
highlight default link qComment Comment
highlight default link qCommentTodo Todo
highlight default link qOpen Comment

" Function
highlight default link qKeyword Function

" Strings and Values
highlight default link qBuiltinFunctions Constant


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink qNumber Number
endif

let b:current_syntax = "qasm"
