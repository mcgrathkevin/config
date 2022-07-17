set nocompatible
" Colors
syntax on
set bg=dark
autocmd vimenter * ++nested colorscheme gruvbox

" Undo
set undodir=~/.vim/undo-dir
set undofile

" Autocomplete"
set tags+=./tags
set tags+=/usr/local/include/tags
set tags+=/usr/local/lib/tags
set completeopt=menuone,longest
set shortmess+=c
set backspace=indent,eol,start

" Spaces & Tabs 
set tabstop=2           " number of visual spaces per TAB

set softtabstop=2       " number of spaces in tab when editing

set expandtab           " tabs are spaces

set shiftwidth=2

set modelines=2

filetype indent on

filetype plugin on
set autoindent

" Auto-Close 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" UI Config 
set number              " show line numbers

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu
set wildmode=list:longest " filters as you type" 

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching 

set foldmethod=manual   " folding

" Searching
set ignorecase
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Folding 
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" space open/closes folds
nnoremap <space> za
" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" use j and k to scroll through autocomplete list 
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" mouse (duh)
set mouse=a
" }}}"
" Leader Shortcuts 
let mapleader=","       " leader is comma

" jk is escape
inoremap jk <esc>

" switch windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

