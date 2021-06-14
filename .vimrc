set number              " show line number
set relativenumber      " show line number on the current line and relative numbers on all other lines.
filetype plugin on      " syntax highlighting
syntax on               " enable syntax highlighting
set autoindent          " enable automatic indentation
set shiftwidth=8        " set shift indent width
set tabstop=8           " set tab size
set expandtab           " replace tabs with white spaces
set softtabstop=8       " remove multiple spaces on single backspace
set cursorline          " highlight the current line
set showcmd             " display incomplete commands
filetype indent on      " load indent file for specific file types
set hlsearch            " enable search highlighting
set smartcase           " automatically switch search to case-sensitive when search query contains an uppercase letter
set encoding=utf-8      " set encoding to utf-8
set fileencodings=ucs-bom,utf-8,gbk
set scrolloff=5         " set the number of screen lines to keep above and below the cursor
set wildmenu            " display command line's tab complete options as a menu
set background=dark     " use colors that suit a dark background
set foldmethod=manual   " code fold manually
set backspace=indent,eol,start  " allow backspacing over indention,line breaks and insertion start
set history=1000        " set the undo limit
" set splitbelow          " set the split window at bottom
set termwinsize=10*0    " set the height of the term
set ignorecase          " use case insensitive search

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let mapleader=" "
inoremap jk <ESC>

autocmd FileType c              setlocal shiftwidth=4 tabstop=4 expandtab softtabstop=4 autoindent
autocmd FileType python         setlocal shiftwidth=4 tabstop=4 expandtab softtabstop=4 autoindent
autocmd FileType cpp            setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 autoindent
autocmd FileType sh             setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 autoindent
autocmd FileType xml            setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 autoindent
autocmd FileType asm            setlocal shiftwidth=8 tabstop=8 expandtab softtabstop=8 autoindent
autocmd FileType awk            setlocal shiftwidth=4 tabstop=4 expandtab softtabstop=4 autoindent
autocmd FileType yaml           setlocal shiftwidth=4 tabstop=4 expandtab softtabstop=4 autoindent
autocmd FileType javascript     setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 autoindent
autocmd FileType html           setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 autoindent

hi clear CursorLine
hi clear CursorLineNr

" YouCompleteMe
let g:ycm_extra_conf_globlist = ['~/Code/C-C++/TLPI/*', '~/Code/KernelModules/*']
" let g:loaded_youcompleteme = 1  " disable youcompleteme loading on startup

" NerdTree config
" autocmd vimenter * NERDTree

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'othree/xml.vim'
Plug 'chun-yang/auto-pairs'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clangd-completer' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
