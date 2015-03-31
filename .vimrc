""" ===========================================
""" Plugin Section
""" ===========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'kien/ctrlp.vim'
"Bundle 'scrooloose/nerdtree'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'nvie/vim-flake8'
"Bundle 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
""" ===========================================
""" Non-Plugin Section
""" ===========================================
" " Automatic reloading of .vimrc
"autocmd! bufwritepost /Users/jseals/.vimrc source %
""
" CtrlP shortcut and settings
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'c'

" NERDTree settings
" Opens NERDTree if no file was passed to vim at runtime
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
" Close vim if only window left open is NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Folding
set foldmethod=indent
" Only fold classes and methods
set foldnestmax=2
" Toggle fold
noremap f za
" Fold all
noremap F zM

noremap z zR

" " When you want to paste large blocks of code into vim, press F2 before you
" " paste. At the bottom you should see ``-- INSERT (paste) --``.
"
set pastetoggle=<F2>
set clipboard=unnamed
"
"
" Mouse works like normal in vim
set mouse=a  " on OSX press ALT and click
"
"

" " Rebind <Leader> key
" " I like to have it here becuase it is easier to reach than the default and
" " it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = " "

" Equal width windows
noremap <Leader>= <C-w>=

" NERDTree shortcut change
"noremap <Leader>; :NERDTreeToggle<CR>

" PEP 8 check - flake8 shortcut
"noremap <Leader>8 :call Flake8()<CR>
"
"
" Comment block shortcut
vnoremap <Leader>c :s/^/#<CR>
" Uncomment block shortcut
vnoremap <Leader>C :s/^#//<CR>

" " Bind nohl
" " Removes highlight of your last search
" " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
"
"
" " Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
"
"
" " Quick quit command
noremap <Leader>wq :wq<CR>  " Quit and save
noremap <Leader>q :q!<CR>   " Quit without saving
"
"
" " bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" " Every unnecessary keystroke that can be saved is good for your health :)
map <Leader>j <c-w>j
map <Leader>k <c-w>k
map <Leader>l <c-w>l
map <Leader>h <c-w>h
"
"
" " easier moving between tabs
"noremap <Leader>m :TagbarToggle<CR>
"noremap <Leader>n :CtrlPTag<CR>
"
"
" " map sort function to a key
vnoremap <Leader>s :sort<CR>

"
" " easier moving of code blocks
" " Try to go into visual mode (v), thenselect several lines of code here and
" " then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
"
"
" " Show whitespace
" " MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/  
"
"
" " Color scheme and Powerline settings
" " mkdir -p ~/.vim/colors && cd ~/.vim/colors
" " wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod
set laststatus=2
"let g:Powerline_symbols = 'fancy'
"set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set noshowmode
"
"
" " Enable syntax highlighting
" " You need to reload this file for the change to apply
" "" filetype off
" "" filetype plugin indent on
syntax on
"
"
" " Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
if v:version >= 730
    set colorcolumn=80
endif
highlight ColorColumn ctermbg=233
"
"
" " easier formatting of paragraphs
vmap Q gq
nmap Q gqap
"
"
" " Useful settings
set history=700
set undolevels=700
"
"
" " Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
"
"
" " Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
"
"
" " Disable stupid backup and swap files - they trigger too many events
" " for file system watchers
" "" set nobackup
" "" set nowritebackup
set noswapfile
"
" ============================================================================
" " Python IDE Setup
" "
" ============================================================================
"
" " Settings for ctrlp
" " cd ~/.vim/bundle
" " git clone https://github.com/kien/ctrlp.vim.git
"let g:ctrlp_max_height = 15
"set wildignore+=*.pyc
" "" set wildignore+=*_build/*
" "" set wildignore+=*/coverage/*
"
"
" Shortcut to insert pdb breakpoint when viewing code
map <Leader>b Oimport pdb; pdb.set_trace() # BREAKPOINT<C-c>
