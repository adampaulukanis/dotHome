" setlocal path=src/**,test*,bin/**,**

" set include=require('\\zs\\(.*\\)\\ze\\(')\\)
setlocal include=\\%(\\<require\\s*(\\s*\\\|\\<import\\>[^;\"']*\\)[\"']\\zs[^\"']*

setlocal isfname+=@-@ " include @ as part of a filename or pathname

function! JSInclude(fname) abort
  " BUILT-IN NODE MODULES
  " Nie wiem jeszcze jak to ugryźć, więc poddaję się
  let idx = index([ 'assert', 'async_hooks',
                 \ 'child_process', 'cluster', 'crypto',
                 \ 'dgram', 'dns', 'domain',
                 \ 'events',
                 \ 'fs',
                 \ 'http', 'http2', 'https',
                 \ 'inspector',
                 \ 'net',
                 \ 'os',
                 \ 'path', 'perf_hooks', 'punycode',
                 \ 'querystring',
                 \ 'readline',
                 \ 'stream', 'string_decoder',
                 \ 'tls', 'tty',
                 \ 'url', 'util',
                 \ 'v8', 'vm',
                 \ 'zlib' ], a:fname)
  if idx != -1
    echom "You won't see this file " . a:fname
    return 0
  endif

  return glob(a:fname, '.;')
endfunction
setlocal includeexpr=JSInclude(v:fname)

" Settings for prettier
setlocal formatprg=prettier\
                \--stdin\
                \--single-quote\
                \--trailing-comma\ es5
let g:prettier#config#single_quote = 'true'
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Sometimes syntax highlighting can get out of sync
autocmd BufEnter *.{js,mjs} :syntax sync fromstart " this can be slow on large files
autocmd BufLeave *.{js,mjs} :syntax sync clear
