inoremap fun function Foo (param1) {<cr>}<esc>?fun<esc>w

" Auto generate tags file on file write of *.js files
"autocmd BufWritePost *.js silent! !ctags -R . --language-force=javascript expand("%") &
autocmd BufWritePost *.js silent! !ctags -R . --language-force=javascript ** &
