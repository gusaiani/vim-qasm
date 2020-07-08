" Vim syntax file
" Language: QASM
" Maintainer: Gustavo Saiani <gustavo@poe.ma>
" Latest Revision: 8 July 2020

if exists("b:current_syntax")
  finish
endif

" Basic tokens
syntax match qSemicolon +;+

" Comment tokens
syntax keyword qCommentTodo contained TODO FIXME XXX TBD
syntax region  qComment start=+//+ end=/$/ contains=qCommentTodo,@Spell extend keepend

" Basics

" Comments
highlight default link qComment Comment
highlight default link qCommentTodo Todo

let b:current_syntax = "qasm"
