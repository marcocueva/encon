set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
"Plugin 'L9'
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

" Incremental search
Plugin 'haya14busa/incsearch.vim'

" snippets
Plugin 'SirVer/ultisnips'

" php
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'

" general web/dev
Plugin 'tpope/vim-markdown'
Plugin 'tyru/open-browser.vim'

Plugin 'eugen0329/vim-esearch'

Plugin 'dsawardekar/wordpress.vim'

"Plugin 'valloric/youcompleteme'

Plugin 'raimondi/delimitmate'

Plugin 'groenewege/vim-less'

"Plugin 'thinca/vim-fontzoom'

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
" Command history
set history=100
"Show line number
set relativenumber
set encoding=utf-8

" ===== Search options ======
"
"Highligth search matches
set hlsearch
"Ignore case when searching
set ignorecase
set smartcase
" Incremental searching (search as you type)
set incsearch

"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" Show incomplete commands
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
" Find trailing whitespace match ErrorMsg '\s\+$'
" Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Always show status bar
set laststatus=2
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Turn word wrap off
set nowrap
set sidescroll=5

" Default Spelling
setlocal spell spelllang=en_us
set complete+=kspell

" Xtra words / Private dict.
set spellfile=$HOME/encon/spell/privateDict.utf-8.add

" Switch syntax highlighting on, when the terminal has colors
syntax on

" ====== Theme options =====
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme industry
endif
"call togglebg#map("<F5>")
set lines=36 columns=120 "Window size
" Font options


" Font options
if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Inconsolata\ 12
  elseif has("gui_photon")
    set guifont=Inconsolata\:s12
  elseif has("gui_kde")
    set guifont=Courier\ New/12/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Inconsolata:h12:cDEFAULT " --Windows font
  endif
endif

" Toggle gui elements
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Always show the cursor
set ruler
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

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
" Close all folds when opening a new buffer
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zM

" Enable folding with the space bar
nnoremap <space> za
" Highlight the current line
set cursorline
" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu
" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw
" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch
" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=white
set colorcolumn=80
set mouse=a
" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Change color scheme when diffing
fun! SetDiffColors()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()

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

"------------------------"
"NERDTREE PLUGIN SETTINGS ---added 25/11
"------------------------"
"Shortcut for NERDTreeToggle
nmap <leader>nt :NERDTreeToggle <CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" -----------------------------

"Helpeful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 

"Spelling corrects. Just for example. Add yours below.
iab teh the
iab Teh The

"Automatically change the current directory 
"autocmd BufEnter * silent! lcd %:p:h

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>


cabbr <expr> %% expand('%:p:h') 
"while editing file /some/path/myfile.txt, typing :e %%/ on the command line will expand to  :e /some/path/.

set path=$PWD/**
" This will set your path variable to current directory (from which you launched vim) and to all directories under current directory recursively
