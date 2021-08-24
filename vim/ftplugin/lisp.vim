" Auto generate tags file
"autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp *.lisp &
"autocmd BufWritePost *.lisp silent! !ctags -R --language-force=lisp ** &
"let g:slimv_preferred = 'clisp'
let g:slimv_preferred = 'sbcl'
let g:slimv_repl_split = 2
let g:slimv_repl_simple_eval = 1
let g:lisp_rainbow=1

" My local copy of HyperSpec
let g:slimv_clhs_user_root="file:///Users/adam/HyperSpec/Body/"
