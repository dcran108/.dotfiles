"""""""""" Builtin Plugin """"""""""

packadd matchit
packadd editorconfig
packadd comment
packadd nohlsearch
" packadd! termdebug

runtime! ftplugin/man.vim
cabbrev man Man

"""""""""" Github Plugin """"""""""

call plug#begin()

" Plug 'tpope/vim-commentary'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'airblade/vim-rooter'
" Plug 'vim-scripts/vim-auto-save'
" Plug 'romainl/vim-cool'
" Plug 'vim-utils/vim-man'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'vhda/verilog_systemverilog.vim'

Plug 'tpope/vim-dispatch'
Plug 'preservim/tagbar'
Plug 'mattkretz/vim-gnuindent'
Plug 'junegunn/vim-easy-align'
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-capslock'

call plug#end()

"""""""""" Config """"""""""

set ttimeout
set ttimeoutlen=50
set mouse=a
set autoindent
" set hidden
set clipboard=unnamed
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set wildmode=list:longest
set wildignorecase
set laststatus=2
set nostartofline
set undodir=~/.vim/undo/
set undofile
" set backupdir=.,~/tmp,~/
" set backup
set directory=.,~/tmp,/var/tmp,/tmp
set tags=./tags;,./TAGS;,tags,TAGS
set autochdir
set autowriteall
" set statusline=[%n]\ %<%.99f\ %y%h%w%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=[%n]\ %<%.99f\ %y%h%w%r%=%-14.(%l,%c%V%)\ %P

if $TERM=="alacritty"
  " colorscheme quiet
  colorscheme shine
  set background=light
elseif $TERM=="xterm-kitty"
  " colorscheme desert
  set background=dark
  highlight Pmenu ctermfg=242 ctermbg=0
  highlight PmenuSel ctermfg=0 ctermbg=13
  " syntax off
endif

filetype plugin indent on

" set shiftwidth=4
" set expandtab
" set softtabstop=4

"""""""""" Keymap """"""""""

let mapleader = ' '

nnoremap <silent> [q :cprevious<cr>
nnoremap <silent> ]q :cnext<cr>
nnoremap <silent> [C :cf<cr>
nnoremap <silent> ]C :cl<cr>
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>
nnoremap <silent> [a :previous<cr>
nnoremap <silent> ]a :next<cr>
nnoremap <silent> [A :first<cr>
nnoremap <silent> ]A :last<cr>
nnoremap <silent> [t :tprevious<cr>
nnoremap <silent> ]t :tnext<cr>
nnoremap <silent> [T :tfirst<cr>
nnoremap <silent> ]T :tlast<cr>

nnoremap <silent> <C-j> o<Esc>
nnoremap <silent> <C-k> O<Esc>
nnoremap <silent> <C-l> :nohl<CR><C-l>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <C-a> <C-o>I
inoremap <C-e> <C-o>A

cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
cnoremap <M-b> <C-Left>
cnoremap <M-b> <C-Right>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"""""""""" abbrev """"""""""

iabbrev defien define

cabbrev fdin find
cabbrev fidn find

"""""""""" autocmd """"""""""

autocmd Filetype * setlocal formatoptions-=o
autocmd CmdlineLeave * nohl
