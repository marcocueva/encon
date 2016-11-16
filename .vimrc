set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin('/Program Files (x86)/Vim/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

" folds
Plugin 'tmhedberg/SimpylFold'

" code browsing
Plugin 'kien/ctrlp.vim'

" status bar
Plugin 'bling/vim-airline'

Plugin 'mattn/emmet-vim'

Plugin 'terryma/vim-multiple-cursors'

" themes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'W0ng/vim-hybrid'
Plugin 'jnurmine/Zenburn'

" navigation
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'

Plugin 'jistr/vim-nerdtree-tabs'

" snippets
Plugin 'SirVer/ultisnips'

" php
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'

" general wev dev
Plugin 'tpope/vim-markdown'
Plugin 'tyru/open-browser.vim'

Plugin 'eugen0329/vim-esearch'

Plugin 'dsawardekar/wordpress.vim'

Plugin 'valloric/youcompleteme'

Plugin 'raimondi/delimitmate'

Plugin 'groenewege/vim-less'

Plugin 'thinca/vim-fontzoom'

Plugin 'takac/vim-fontmanager'

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"execute pathogen#infect()

" appearance {{{1
" omnicompletion config
set completeopt=menu,menuone,longest
set pumheight=15
" }}}1

"No swap file
set noswapfile
"Show line number
set number
set encoding=utf-8

" ===== Search options ======
"
"Highligth search matches
set hlsearch 
"Ignore case when searching
set smartcase
set incsearch
set ignorecase

set showcmd

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start
" Convert tabs to spaces
set expandtab
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Highlight tailing whitespace
set listchars=tab:\ \},trail:.
" Find trailing whitespace
match ErrorMsg '\s\+$'
" Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

set laststatus=2
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Turn word wrap off

set sidescroll=5

setlocal spell spelllang=en_us "Spelling
set complete+=kspell

syntax on

" Theme options
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
call togglebg#map("<F5>")
set lines=48 columns=160 "Window size
" Font options
set guifont=Inconsolata:h12:cANSI:qDRAFT
" Toggle gui elements
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

set ruler
set clipboard+=unnamed

set splitbelow "split windows
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set cursorline
set wildmenu
set showmatch
autocmd BufWinEnter * highlight ColorColumn ctermbg=white
set colorcolumn=80
set mouse=a


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
