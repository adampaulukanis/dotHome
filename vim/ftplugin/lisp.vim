" Auto generate tags file
autocmd BufWritePost *.lisp silent! !ctags -a -R --language-force=lisp *.lisp &

let g:slimv_preferred = 'clisp'
let g:slimv_repl_split = 4
