" Auto generate tags file on file write of *.js files
"autocmd BufWritePost *.js silent! !ctags -R . --language-force=javascript expand("%") &
"autocmd BufWritePost *.js silent! !ctags -R . --language-force=javascript ** &
" inoremap fun function xxx (xxx) {<cr>}<esc>k0/xxx<cr> ciw
" inoremap fun function name (arguments) {<cr>body<cr>}<esc>2k0wve

nnoremap <space> :silent make %<cr> <bar> :cw<cr> <bar> :redraw!<cr>
set formatoptions-=cro
