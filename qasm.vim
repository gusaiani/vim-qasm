" Vim syntax file
" Language: QASM
" Maintainer: Gustavo Saiani <gustavo@poe.ma>
" Latest Revision: 8 July 2020

if exists("b:current_syntax")
  finish
endif

" Basic tokens
syntax keyword qasmDebugger debugger
syntax match qasmSemicolon +;+

" Basics
highlight default link qasmDebugger Keyword

let b:current_syntax = "qasm"
