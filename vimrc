syntax on
filetype plugin indent on
set nocompatible

" set the runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/echodoc.vim'
Plugin 'vim-scripts/loremipsum'
Plugin 'vimwiki/vimwiki'

" Plugin 'guns/xterm-color-table.vim' " helps with colours in VIM; also you may want to have a look at color_demo.vim

" all of your Plugins must be added before the following line
call vundle#end()

" TODO: Is there any way to test whether Vim.app was started from the Finder?
if has("gui_running")
  " Get the value of $PATH from a login shell.
  " If your shell is not on this list, it may be just because we have not
  " tested it.  Try adding it to the list and see if it works.  If so,
  " please post a note to the vim-mac list!
  if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
    let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
    let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
  endif
  " Change directory on startup.
  autocmd VimEnter * if getcwd()=="/" | if strlen(@%) | cd %:p:h | else | cd | endif | endif
" If running in a Terminal window, set the terminal type to allow syntax
" highlighting.
"else
"  set term=ansi
endif

set fileencoding=utf-8
set enc=utf-8
set spell
set spelllang=en,pl " download ftp://ftp.vim.org/pub/vim/runtime/spell/pl.utf-8.spl
set tabstop=2
set shiftwidth=2
set expandtab
set ruler

" my own rules
"
" I commented these out because if I use iTerm pressing CMD+/ will show me where
" the cursor is
" set cursorline
set cursorcolumn
" other rules I like
set number
set colorcolumn=81,121
" set colorcolumn=121
" execute "set colorcolumn=" . join(range(81,121), ',')
highlight ColorColumn ctermbg=166

"set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
set term=screen-256color

" if I want 2 lines:
"let &colorcolumn='81,' . join(range(121,333), ',')

set laststatus=2

" run JSHint when a file with .js extension is saved
" " this requires the jsHint2 plugin
"autocmd BufWritePost *.js silent :JSHint

" I want backspace to work!
" 2  same as ":set backspace=indent,eol,start"
set backspace=2
" Show line breaks and other chars
set listchars=eol:$,tab:»·,nbsp:_,trail:.

set list

" better indentations: do not loose focus after you indent
vnoremap < <gv
vnoremap > >gv

" show relative number, it looks quite good to me ;)
"set relativenumber

" colorscheme desert " looks better then default one
colorscheme newmoon

" Autocompletion
set omnifunc=syntaxcomplete#Complete
" make work with VIM a little bit nicer ;)
set number
set cursorline
hi CursorLineNr cterm=bold ctermfg=white ctermbg=red
hi CursorLine cterm=none
hi Pmenu ctermbg=Blue
hi PmenuSel ctermfg=Black
hi PmenuSel ctermbg=Grey
hi Visual term=reverse cterm=reverse
hi StatusLine ctermfg=Green
set hlsearch

" get rid of arrows
noremap <Up>      <Nop>
noremap <Down>    <Nop>
noremap <Left>    <Nop>
noremap <Right>    <Nop>

" to use echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1

" tab navigation
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tn :tabnew<CR>

" folding
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Aid in pasting text unmodified from other applications.
set paste

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Building a statusline

"  GIT branch icon
" hi User1 ctermbg=black ctermfg=red guibg=green guifg=red
hi User1 ctermfg=black ctermbg=red
hi User2 ctermfg=black  ctermbg=172
hi User3 ctermfg=black  ctermbg=100
hi User4 ctermfg=black  ctermbg=154
hi User5 ctermfg=black  ctermbg=150
hi User7 ctermfg=white  ctermbg=52
hi User8 ctermfg=white  ctermbg=81
hi User9 ctermfg=white  ctermbg=128
hi User0 ctermfg=white  ctermbg=111
set statusline=%2* " User2
set statusline+=%t " tail of the filename
set statusline+=%3* " User3
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=%1* " User1
set statusline+=\ %P "percent through file
set statusline+=\  " leave a space

" Make :W same as :w (which is write)
:command W write

" Make comments red
highlight Comment ctermfg=196
