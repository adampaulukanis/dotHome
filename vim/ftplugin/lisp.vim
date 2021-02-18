" Auto generate tags file
"autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp *.lisp &
autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp ** &

let g:slimv_preferred = 'clisp'
let g:slimv_repl_split = 4
