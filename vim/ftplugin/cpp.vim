set makeprg=make\ %:s?src/??:r
packadd termdebug

nmap <buffer> <Leader>c :w<CR>:lmake <Bar> :lwindow<CR><CR><CR>
nmap <buffer> <Leader>r :vert term time bin/<C-r>=expand('%:s?src/??:r')<CR><CR>
nmap <buffer> <Leader>rf :vert term make <C-r>=expand('%:s?src/??:r')<CR>.in<CR>
nmap <buffer> <Leader>d :TermdebugCommand  bin/<C-r>=expand('%:s?src/??:r')<CR><CR>
nmap <buffer> <Leader>df :TermdebugCommand  bin/<C-r>=expand('%:s?src/??:r')<CR> < in/<C-r>=expand('%:s?src/??:r')<CR>.in<CR>

let g:termdebug_wide = 1

" snippets
nnoremap \s :-1read $HOME/.vim/snippets/cpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>4jo
nnoremap \sc :-1read $HOME/.vim/snippets/cfcpp<CR><S-o>/*<CR><BS><BS>* Author:<TAB>nikhilreddydev<CR>* Date:<TAB><ESC>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>k<S-j>o*/<ESC>25jzzo
