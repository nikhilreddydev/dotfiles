set makeprg=make\ %:t
" packadd termdebug

" compile and run
nmap <buffer> <F9> :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
imap <buffer> <F9> <ESC>:w<CR>:lmake <Bar> :lwindow<CR><CR><CR>

" nmap <buffer> <Leader>c :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
" nmap <buffer> <Leader>r :vert term make %:t:r<CR>
" nmap <buffer> <Leader>rf :vert term make %:t:r.in<CR>
" nmap <buffer> <Leader>d :TermdebugCommand  ./bin/<C-r>=expand('%:t:r')<CR><CR>
" nmap <buffer> <Leader>df :TermdebugCommand  ./bin/<C-r>=expand('%:t:r')<CR> < ./in/<C-r>=expand('%:t:r')<CR>.in<CR>

" let g:termdebug_wide = 1

" snippets
nnoremap \s :-1read $HOME/.vim/snippets/c<CR>3jo
