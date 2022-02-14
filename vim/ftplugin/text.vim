nmap <buffer> <F10> :w<CR>:!make %<.in<CR><CR>
imap <buffer> <F10> <ESC>:<C-u>:w<CR>:!make %<.in<CR><CR>

" auto reload output files
set autoread
autocmd Focusgained,BufEnter * :silent! !
