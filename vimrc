set nocompatible "works well
set number	 "shows line numbers
set relativenumber "relative to current line
set showcmd	  "show incomplete keybind
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
set wildmode=longest,list
set title
set showmatch
set scrolloff=5
set timeout
set ttimeout
set timeoutlen=1000
set ttimeoutlen=5
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

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
     autocmd!
     	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END

"mappings
let mapleader=" "

map <c-x> :nohlsearch<CR>
map <c-z> :set rnu!<CR>

" 1. Normal mode
nmap Q <Nop>

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

nnoremap H ^
nnoremap L $

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" 2. Insert mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" 3. Visual mode
vnoremap <Tab> >
vnoremap <S-Tab> <

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

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
      \   'charvaluehex': '0x%B'
      \ }
      \ }

"3. easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <Leader> <Plug>(easymotion-prefix)

" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
" type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1

" hjkl  s j k t / ? g/   -- EasyMotion
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)

"4. ctrlp
map <Leader>p :CtrlP<CR>
map <Leader>; :CtrlPBuffer<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


"-------------Leader--------------
"  <Space>  --  <leader><leader> toggles between buffers
nnoremap <Leader><Leader> <c-^>

"  - |     --  Split with leader
nnoremap <Leader>- :sp<CR>
nnoremap <Leader>= :vsp<CR>

" quickly edit and load conf files
nnoremap <Leader>`z :vsp ~/.zshrc<CR>
nnoremap <Leader>`v :vsp ~/.vimrc<CR>
nnoremap <Leader>rv :source ~/.vimrc<CR>

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
