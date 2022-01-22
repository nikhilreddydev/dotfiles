set makeprg=make\ %:t

nmap <buffer> <Leader>c :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
nmap <buffer> <Leader>r :vert term make %:t:r<CR>
