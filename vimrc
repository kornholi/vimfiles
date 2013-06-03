" This must be first, because it changes other options as side effect
set nocompatible

filetype off "required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/bufexplorer.zip'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'

Bundle 'tpope/vim-markdown'

Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'

Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on "required!

set t_Co=256
colorscheme Tomorrow-Night
highlight Folded ctermbg=238
syntax on

set visualbell
set noerrorbells

set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set backspace=indent,eol,start

set history=1000

set showcmd
set showmode

set showmatch

set number	" line numbers
set ruler

"display tabs and trailing spaces
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set smartcase
set incsearch
set hlsearch

set scrolloff=4
"set sidescrolloff=7
"set sidescroll=1

if v:version >= 703
	set undodir=~/.vim/undofiles
	set undofile

"	set colorcolumn=+1
endif

set nobackup

set title
set mouse=a
set ttymouse=xterm2

set hidden

set laststatus=2
"set statusline=%n\ %F\ %mr%r\%=%c-%l/%L

"change mapleader from \ to ,
let g:mapleader=","

"nnoremap ; :nohlsearch<CR>
nnoremap <silent> <leader>/ :nohlsearch<CR>

nnoremap <silent> <F1> :BufExplorer<CR>
"nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
set pastetoggle=<F5>

"nerdtree
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

"moved to after/plugin/nerdtree.vim
"call g:NERDTreeKeyMap.Remove('<MiddleRelease>', 'all')

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"python highlighting extras
let python_highlight_all = 1

"PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

let g:ycm_extra_conf_globlist = ['~/.vim/ycm_extra_conf.py']
let g:ycm_autoclose_preview_window_after_insertion = 1
