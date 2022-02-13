set makeprg=make\ %<
packadd termdebug

nmap <buffer> <Leader>c :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
nmap <buffer> <Leader>r :vert term time ./<C-r>=expand('%:r')<CR><CR>
nmap <buffer> <Leader>rf :vert term make %<.in<CR>
nmap <buffer> <Leader>d :TermdebugCommand  <C-r>=expand('%:r')<CR><CR>
nmap <buffer> <Leader>df :TermdebugCommand  <C-r>=expand('%:r')<CR> < <C-r>=expand('%:r')<CR>.in<CR>

let g:termdebug_wide = 1

" snippets
nnoremap \s :-1read $HOME/.vim/snippets/temp.cpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>4jo
nnoremap \sc :-1read $HOME/.vim/snippets/cptemp.cpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>28jzzo

" noremap <F9> :w <CR> :!g++ -g -std=c++17 -Wall -Wextra -Wshadow -DONPC -o %< % && ./%< < %<.in<CR>
" inoremap <F9> <ESC> :w <CR> :!g++ -g -std=c++17 -Wall -Wextra -Wshadow -DONPC -o %< % && ./%< < %<.in<CR>
