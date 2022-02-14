set cindent
set makeprg=make\ %<

" compile and run
nmap <buffer> <F9> :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
imap <buffer> <F9> <ESC>:w<CR>:lmake <Bar> :lwindow<CR><CR><CR>

" remove mdb lines
nnoremap <Leader>r :Mdb<CR>

" snippets
nnoremap \s :-1read $HOME/.vim/snippets/temp.cpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>10jo
nnoremap \sc :-1read $HOME/.vim/snippets/cptemp.cpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>40jzzo
