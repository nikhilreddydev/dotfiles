set makeprg=make\ %:t
packadd termdebug

nmap <buffer> <Leader>c :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
nmap <buffer> <Leader>r :vert term make %:t:r<CR>
nmap <buffer> <Leader>rf :vert term make %:t:r.txt<CR>
nmap <buffer> <Leader>d :TermdebugCommand  ./bin/<C-r>=expand('%:t:r')<CR><CR>
nmap <buffer> <Leader>df :TermdebugCommand  ./bin/<C-r>=expand('%:t:r')<CR> < ./in/<C-r>=expand('%:t:r')<CR>.txt<CR>

let g:termdebug_wide = 1
