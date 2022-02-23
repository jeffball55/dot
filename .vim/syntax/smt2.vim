" Vim syntax file
" Language: SMT-LIB
" Maintainer: Roberto Vigo
" Latest Revision: 23 Jan 2012

if exists("b:current_syntax")
  finish
endif

" Keywords
setlocal iskeyword+=-
setlocal iskeyword+==
setlocal iskeyword+=>
setlocal iskeyword+=:
syn keyword basicLanguageKeywords assert check-sat get-proof get-model declare-sort define-sort declare-const declare-fun set-option set-logic forall :pattern exit 
syn keyword const false true QF_BV
syn keyword Type BitVec
syn keyword operators and or not => = iff distinct ite bvsub bvxor bvand bvor bvxnor extract concat zero_extend sign_extend
syn match Number "bv[0-9]*"
syn match comments ";.*$"

hi def link basicLanguageKeywords   Statement
hi def link comments 	Comment
hi def link const	Constant
hi def link operators         Operator

let b:current_syntax = "smt2"
