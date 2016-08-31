" Vim syntax file
" Language:	kscript
" Maintainer:	Thomas Capricelli <orzel@yalbi.com>
" URL:		http://aquila.rezel.enst.fr/thomas/vim/kscript.vim
" CVS:		$Id: kscript.vim,v 1.1 2004/06/13 17:40:02 vimboss Exp $

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword	kscriptPreCondit	import from

syn keyword	kscriptHardCoded	print println connect length arg mid upper lower isEmpty toInt toFloat findApplication
syn keyword	kscriptConditional	if else switch
syn keyword	kscriptRepeat		while for do foreach
syn keyword	kscriptExceptions	emit catch raise try signal
syn keyword	kscriptFunction		class struct enum
syn keyword	kscriptConst		FALSE TRUE false true
syn keyword	kscriptStatement	return delete
syn keyword	kscriptLabel		case default
syn keyword	kscriptStorageClass	const
syn keyword	kscriptType		in out inout var

syn keyword	kscriptTodo		contained TODO FIXME XXX

syn region	kscriptComment		start="/\*" end="\*/" contains=kscriptTodo
syn match	kscriptComment		"//.*" contains=kscriptTodo
syn match	kscriptComment		"#.*$" contains=kscriptTodo

syn region	kscriptString		start=+'+  end=+'+ skip=+\\\\\|\\'+
syn region	kscriptString		start=+"+  end=+"+ skip=+\\\\\|\\"+
syn region	kscriptString		start=+"""+  end=+"""+
syn region	kscriptString		start=+'''+  end=+'''+

" Define the default highlighting.
" Only when an item doesn't have highlighting yet
command -nargs=+ HiLink hi def link <args>

HiLink kscriptConditional		Conditional
HiLink kscriptRepeat			Repeat
HiLink kscriptExceptions		Statement
HiLink kscriptFunction		Function
HiLink kscriptConst			Constant
HiLink kscriptStatement		Statement
HiLink kscriptLabel			Label
HiLink kscriptStorageClass		StorageClass
HiLink kscriptType			Type
HiLink kscriptTodo			Todo
HiLink kscriptComment		Comment
HiLink kscriptString			String
HiLink kscriptPreCondit		PreCondit
HiLink kscriptHardCoded		Statement

delcommand HiLink

let b:current_syntax = "kscript"

" vim: ts=8
