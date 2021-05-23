<<<<<<< HEAD
" Auto generate tags file
"autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp *.lisp &
autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp ** &

=======
>>>>>>> disable-creating-tag-file
let g:slimv_preferred = 'clisp'
let g:slimv_repl_split = 2
