set nocompatible
filetype on

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
Plugin 'kamwitsta/flatwhite-vim'
Plugin 'tpope/vim-vividchalk'
Plugin 'reedes/vim-colors-pencil'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'dracula/vim'


" navigation
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'bufexplorer.zip'

Plugin 'jistr/vim-nerdtree-tabs'
"Tmux navigation & Integration
Plugin 'tmux-plugins/vim-tmux'
Plugin 'christoomey/vim-tmux-navigator'
" Incremental search
Plugin 'haya14busa/incsearch.vim'

" snippets
Plugin 'SirVer/ultisnips'
"Documentación
Plugin 'Keith/investigate.vim'

" php
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'

" general web/dev
Plugin 'tpope/vim-markdown'
Plugin 'tyru/open-browser.vim'

Plugin 'eugen0329/vim-esearch'

Plugin 'dsawardekar/wordpress.vim'

Plugin 'valloric/youcompleteme'

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

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

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
  colorscheme desert "pencil molokai dracula industry
  set background=dark
endif
"Change spelling highlightning
hi clear SpellBad
hi SpellBad cterm=underline

"call togglebg#map("<F5>")
set lines=36 columns=120 "Window size


" Font options
if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Inconsolata\ 13
  elseif has("gui_photon")
    set guifont=Inconsolata\:s13
  elseif has("gui_kde")
    set guifont=Courier\ New/13/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Inconsolata:h13:cDEFAULT " --Windows font
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
nmap <silent><A-Up> :wincmd k<CR>
nmap <silent><A-Down> :wincmd j<CR>
nmap <silent><A-Right> :wincmd l<CR>
nmap <silent><A-Left> :wincmd h<CR>


nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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
autocmd BufWinEnter * highlight ColorColumn ctermbg=lightgray
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
iab Adn And
iab adn and

"Automatically change the current directory
"autocmd BufEnter * silent! lcd %:p:h

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>


cabbr <expr> %% expand('%:p:h')
"while editing file /some/path/myfile.txt, typing :e %%/ on the command line will expand to  :e /some/path/.

set path=$PWD/**
"This will set your path variable to current directory (from which you launched vim) and to all directories under current directory recursively
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 1

"You Completeme configuration 

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Wordpress.vim
let g:wordpress_vim_wordpress_path = "~/wordpress/" 

"autocomplete PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP"
"Ctags
set tags=./tags;

"Keep your cursor 6 lines above end of screen
set scrolloff=6

"Disable arrow keys in normal mode
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"Investigate.vim settings
let g:investigate_command_for_python = '/usr/bin/zeal ^s'

"Investigate.vim mapping
:nnoremap gz :!zeal "<cword>"&<CR><CR>



"Usage:

	" Open URI under cursor.
	" Search word under cursor.
	nmap goo <Plug>(openbrowser-search)
	" Search selected word. vmap map-you-like <Plug>(openbrowser-search)

	" If it looks like URI, open an URI under cursor.
	" Otherwise, search a word under cursor.
	nmap gos <Plug>(openbrowser-smart-search)
	" If it looks like URI, open selected URI.
	" Otherwise, search selected word.
	vmap gos <Plug>(openbrowser-smart-search)

"	" Open http://google.com/ in a web browser.
"	:OpenBrowser http://google.com/
"	" Search the word "vim". (Default search engine is google)
"	:OpenBrowserSearch vim
"	" Search the word "openbrowser" in www.vim.org .
"	:OpenBrowserSearch -vim openbrowser
"	" If it looks like URL, open the URL in a web browser.
"	:OpenBrowserSmartSearch http://www.vim.org/
"	" If it does not look like URL, open the word
"	" in the default search engine.
"	:OpenBrowserSmartSearch emacs download
"	" Also you can specify another search engine.
"	:OpenBrowserSmartSearch -github tyru

"CDC =Change to directory of the current file
if !exists("command")
command! CDC cd %:p:h
endif

"This method uses a command line abbreviation so %% expands to the full path of the directory that contains the current file 
cabbr <expr> %% expand('%:p:h')

"Neovim conf.
"set termguicolors
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

"set term=screen-256color

