packadd termdebug
nmap <buffer> <Leader>r :vert term make %:t<CR>
nmap <buffer> <Leader>d :TermdebugCommand ./bin/<C-r>=expand('%:t:r')<CR> < %:t<CR>
