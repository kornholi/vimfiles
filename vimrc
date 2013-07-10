" This must be first, because it changes other options as side effect
set nocompatible

filetype off "required!

if !isdirectory(expand("~/.vim/bundle/vundle"))
   !mkdir -p ~/.vim/bundle
   !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
   let s:bootstrap=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/a.vim'

"Bundle 'L9'
"Bundle 'FuzzyFinder'

" Better fuzzy finder
Bundle 'kien/ctrlp.vim'

Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'

Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'

Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-session'

Bundle 'majutsushi/tagbar'

Bundle 'Valloric/YouCompleteMe'

Bundle 'StanAngeloff/php.vim'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'ap/vim-css-color'
Bundle 'elzr/vim-json'
Bundle 'othree/html5.vim'

if exists("s:bootstrap") && s:bootstrap
    unlet s:bootstrap
    BundleInstall
endif
            
" enabled detection, plugins, and indenting
filetype plugin indent on


if &t_Co > 2 || has("gui_running")
    colorscheme Tomorrow-Night
    highlight Folded ctermbg=238
    syntax on
endif

if has("gui_running")
    set guifont=Terminus\ 9
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
endif

set scrolloff=3     " keep cursor 3 lines from screen border
set showmatch       " show matching bracket
set matchtime=2     " for 200ms
set showmode
set showcmd
set ruler           " cursor position in status bar
set title           
set number          " line numbers
set cursorline      " highlights current line

set mouse=a
set ttymouse=xterm2

set visualbell
set noerrorbells

set tabstop=4
set softtabstop=4
set shiftwidth=4    " spaces for autoindents 
set expandtab       " turn tabs into spaces
set autoindent      " match ident of previous line
set copyindent      " copy previous indent
set cindent         " indent for c-like code
set smarttab

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set backspace=indent,eol,start

set hidden " let buffers to be hidden with unsaved changes

set history=1000
"set nobackup " no backup~ files
set backupdir=~/.vim/backup/
set directory=~/.vim/backup
"display tabs and trailing spaces
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set ignorecase
set smartcase
set incsearch       " incremental search
set hlsearch        " highlight search results

if v:version >= 703
	set undodir=~/.vim/undofiles
	set undofile
	set undolevels=1000
endif

set laststatus=2 " always show status line

"change mapleader from \ to ,
let g:mapleader=","

nnoremap <silent> <leader>/ :nohlsearch<CR>

let g:ctrlp_map = '<leader>e'
noremap <leader>m :CtrlPMRUFiles<CR>

nnoremap <F1> <nop>
"nnoremap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <F3> :NERDTreeFind<cr>

nnoremap <leader>y :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>pg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>pc :YcmCompleter GToDeclaration<CR>

set pastetoggle=<F7>

"nerdtree
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

"moved to after/plugin/nerdtree.vim
"call g:NERDTreeKeyMap.Remove('<MiddleRelease>', 'all')

"python remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"python highlighting extras
let python_highlight_all = 1

" PHP highlighting extras
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1

" syntastic
let g:syntastic_python_checkers=['pyflakes']

" ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1

" session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_default_to_laste = 'yes'

" easytags
set tags=./tags;
"let g:easytags_dynamic_files = 1
"let g:easytags_updatetime_autodisable = 1

" tagbar
let g:tagbar_left = 1
let g:tagbar_sort = 0

nnoremap <F4> :TagbarToggle<cr><c-w>=

" fuzzyfinder
"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 1000
"let g:fuf_mrucmd_maxItem = 400
"let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|class|meta|lock|orig|jar|swp)$|/test/data\.|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

let g:ctrlp_match_window_bottom = 0
