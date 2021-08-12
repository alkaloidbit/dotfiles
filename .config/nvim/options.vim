" Options {{{
" Local directories {{{
set backupdir^=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set directory^=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
" }}}
set path=$PWD/**    " Add current directory + sub-directories recursively to path
set viminfo='100,n$HOME/.vim/files/info/viminfo'
set redrawtime=10000
set autoindent  " Copy indent from last line when starting new line
set backspace=indent,eol,start
" set cursorline	        " highlight current line
set encoding=utf-8 nobomb   " BOM often causes troubles
set expandtab   " Tabs are spaces
set foldcolumn=0    " Column to show folds
set foldenable  " Enable folding
set foldlevel=1  
set foldlevelstart=10   " Start with fold level of / 
set foldmethod=indent   " Fold based on indent level
set foldnestmax=10  " Set max fold nesting level
set gdefault    " Applies substitution globally 
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=1000 " Increase history from 20 default to 1000
set hlsearch    " Highlight searches
set ignorecase  " Ignore case of searches
set incsearch   "Highlight dynamically as pattern is typed
set laststatus=2  " Always show status line
set lazyredraw  " Don't redraw when we don't have to
set modeline
set modelines=1
set nocompatible
set noerrorbells    " Disable error bells
set noshowmode  " Don't show the current mode (lightline.vim takes care of that for us)
" set nowrap  " Do not wrap lines
set nu " Enable line numbers
set ruler   " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of windows
set sessionoptions+=tabpages,globals " for session being able to remember tab names (using Taboo plug) 
set shiftwidth=4  " The # of spaces for indenting
set shortmess=atI   " Don't show intro msg when starting vim
set showcmd " show command in bottom bar
set showmatch   " hightlight matching [{()}]
set showtabline=2   " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of windows
set smartcase   " Ignore 'ignorecase' if search pattern contains uppercase characters
set smarttab    " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=4   " Tab key results in 4 spaces
set splitbelow
set splitright
set title   " Show the filename in the window titlebar
" Make the keyboard faaaaast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set undodir=~/.vim/undodir
set undofile    " Persistent undo
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/doc/*,*/node_modules/*
set wildmenu    " Hitting TAB in command mode will show possible completions above command line
" set wildmode=list:longest   " Complete only until point of ambiguity
set winminheight=0  "Allow splits to be reduced to a single line
" }}} 
" vim: foldmethod=marker:foldlevel=0:
