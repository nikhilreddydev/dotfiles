set nocompatible "works well
set number "shows line numbers
set relativenumber "relative to current line
set showcmd  "show incomplete keybind
set laststatus=2  "always show statusline
set incsearch
set hlsearch
set mouse+=a
set splitright
set splitbelow
set wildmenu
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:>--,trail:-
set hidden
syntax on
set title
set showmatch
set scrolloff=5
set timeout
set ttimeout
set timeoutlen=500
set ttimeoutlen=2
set lazyredraw
set ignorecase
set smartcase
filetype plugin on
filetype indent on
set autoindent
set linebreak
set nojoinspaces
set wildignore+=*/.git/*,*/tmp/*,*.swp
set nowrapscan
set path+=**
set display+=lastline "no @ @ @ lines in bottom

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
     autocmd!
     	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END

" automatically wrap lines for gitcommit message
autocmd Filetype gitcommit call SetGitOptions()
function SetGitOptions()
	setlocal formatoptions+=t
	setlocal textwidth=72
endfunction

" Mappings
let mapleader=" "

map <C-x> :nohlsearch<CR>
map <C-n> :set rnu!<CR>

" ALT key maps
execute "set <M-h> =\eh"
map <M-h> ^
execute "set <M-l> =\el"
map <M-l> $

execute "set <M-n> =\en"
map <M-n> :lnext<CR>
execute "set <M-p> =\ep"
map <M-p> :lprevious<CR>

" 1. Normal mode
nmap Q <Nop>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

nnoremap Y y$

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move windows to left and right
map <ESC>[1;5D <C-right>
nnoremap <C-right> 10<C-w><
map <ESC>[1;5C <C-left>
nnoremap <C-left> 10<C-w>>

nnoremap <Down> :echoe "Stupid! use j"<CR>
nnoremap <Right> :echoe "Stupid! use l"<CR>
nnoremap <Up> :echoe "Stupid! use k"<CR>
nnoremap <Left> :echoe "Stupid! use h"<CR>

nnoremap <TAB> %

" 2. Insert mode
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" inoremap <Up> <Nop>

inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>ko
inoremap ( ()<Left>
inoremap [ []<Left>

" 3. Visual mode
vnoremap <Tab> >
vnoremap <S-Tab> <

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" 4. Terminal Job mode
tnoremap <C-h> <C-\><C-N><C-W>h
tnoremap <C-j> <C-\><C-N><C-W>j
tnoremap <C-k> <C-\><C-N><C-W>k
tnoremap <C-l> <C-\><C-N><C-W>l

"-------------Plugins------------
"1. Gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"2. lightline
set noshowmode
if !has('gui_running')
	  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype', 'charvaluehex' ] ]
      \ },
	  \ 'component_function': {
	  \ 	'gitbranch': 'FugitiveHead',
      \ },
	  \ 'component': {
	  \		'charvaluehex': '0x%B',
	  \ }
      \ }

"-------------Leader--------------
"  <Space>  --  <leader><leader> toggles between buffers
nnoremap <Leader><Leader> <c-^>

" find file
nnoremap <Leader>f :find 
nnoremap <Leader>b :ls<CR>:b
nnoremap <Leader>e :e 
nnoremap <Leader>sb :ls<CR>:sb
nnoremap <Leader>vb :ls<CR>:vert sb
nnoremap <Leader>tb :ls<CR>:tab sb

"  - |     --  Split with leader
nnoremap <Leader>- :sp<CR>
nnoremap <Leader>= :vsp<CR>

" quickly edit and load conf files
nnoremap <Leader>z :tabnew ~/.zshrc<CR>
nnoremap <Leader>v :tabnew ~/.vimrc<CR>
nnoremap <Leader>s :source ~/.vimrc<CR>

"  w wq q   --  Quick Save
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>Q :q!<CR>

" numbers
nnoremap <Leader>1 1gt<CR>
nnoremap <Leader>2 2gt<CR>
nnoremap <Leader>3 3gt<CR>
nnoremap <Leader>4 4gt<CR>
nnoremap <Leader>5 5gt<CR>
nnoremap <Leader>6 6gt<CR>
nnoremap <Leader>7 7gt<CR>
nnoremap <Leader>8 8gt<CR>
nnoremap <Leader>9 9gt<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>x :tabclose<CR>

" change cursor type in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" custom commands
command Cpp :tabnew ~/.vim/ftplugin/cpp.vim
command Mdb :30,$s/.*mdb.*\n//gc
