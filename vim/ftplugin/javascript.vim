set makeprg=make\ %<

" compile and run
nmap <buffer> <F9> :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
imap <buffer> <F9> <ESC>:w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
