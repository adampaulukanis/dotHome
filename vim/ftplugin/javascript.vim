inoremap fun function (xxx) {<cr>}<esc>k0/xxx<cr> ciw
" Auto generate tags file on file write of *.js files
autocmd BufWritePost *.js silent! !ctags -a -R . --language-force=javascript *.js &
