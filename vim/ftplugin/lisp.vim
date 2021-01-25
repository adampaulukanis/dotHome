" Auto generate tags file
autocmd BufWritePost *.lisp silent! !ctags -R . &
