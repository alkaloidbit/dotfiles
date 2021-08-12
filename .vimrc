" Settings {{{
" Misc {{{
let mapleader=","   " Leader is comma
set path=$PWD/**    " Add current directory + sub-directories recursively to path
set viminfo='100,n$HOME/.vim/files/info/viminfo'
set redrawtime=10000
nnoremap gb :ls<CR>:b<Space>
" }}}
" Plugs mappings {{{
" Instant-markdown {{{
nnoremap <leader>md :InstantMarkdownPreview<CR>
" }}}
" Ncm2 {{{
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Use <TAB> to select the popup menu:
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" }}}
" NERDTree {{{
nnoremap <leader>b :OpenBookmark<Space>
nnoremap <leader>gf :NERDTreeFind<CR> 
nnoremap <silent> <F9> :NERDTreeToggle<CR>
" close NERDTree if last buffer
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" FZF {{{
" if focus is on NERDTree buffer, switch to next split before opening FzF  
noremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
" Map a few common things to do with FZF.
nnoremap <silent> <leader>bb :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <Leader>. :BTags<CR>
nnoremap <silent> <leader>d :Files <C-r>=expand("%:h")<CR>/<CR>
" }}}
" Rip-grep {{{
nnoremap <leader>rg :Rg<space>
nnoremap <leader>RG :exec "Rg ".expand("<cword>")<cr>
" }}}
" Ferret {{{
nmap <leader>fa <Plug>(FerretAck)
nmap <leader>fl <Plug>(FerretLack)
nmap <leader>fw <Plug>(FerretAckWord)
nmap <leader>fr <Plug>(FerretAcks)
nmap <leader>fb :Back<space>
" }}}
" PHPStan {{{
let g:phpstan_analyse_level = 7
" }}}
" mini-yank {{{
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>a <Plug>(miniyank-cycle)
" }}}
" }}} 
" Plugs Settings {{{
" startify {{{
let g:startify_session_dir = '~/.vim/vim-sessions'
" }}}
" Rainbow parantheses (use :RainbowTopggle to enable/disable){{{
let g:rainbow_active = 0
" }}}
" Vim Plug  {{{
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'SirVer/ultiSnips'
" Plug 'albanm/vuetify-vim'
Plug 'dense-analysis/ale'
Plug 'StanAngeloff/php.vim'
Plug 'kevinoid/vim-jsonc'
Plug 'lumiliet/vim-twig'
Plug 'phpstan/vim-phpstan'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'arcticicestudio/nord-vim'
Plug 'bfredl/nvim-miniyank'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
" Plug 'rafaqz/ranger.vim'
Plug 'mboughaba/i3config.vim'
Plug 'epilande/vim-es2015-snippets'
Plug 'alvan/vim-closetag'
Plug 'godlygeek/tabular'
Plug 'haya14busa/is.vim'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kshenoy/vim-signature'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
" Modify * to also work with visual selection
Plug 'nelstrom/vim-visual-star-search'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox',
Plug 'qbbr/vim-symfony'
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-tern'
"Plug 'ncm2/ncm2-html-subscope',
"Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor', {'do': 'composer install', 'for': 'php'}
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-unimpaired'
Plug 'vimwiki/vimwiki'
Plug 'wincent/ferret'
call plug#end()
" }}}
" php-namespace {{{
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <leader>U <Esc>:call PhpInsertUse()<CR>
" }}}
" NERDTree {{{
" Dont confirm for deleting opened buffer when deleting file 
" fron NERDTree
let NERDTreeAutoDeleteBuffer=1
" AutoCD when NERDTreeRootDir change
let NERDTreeChDirMode=2
" Ignore list
let NERDTreeIgnore=['node_modules', 
            \ 'package-lock.json',
            \ 'package.json',
            \ 'postcss.config.js',
            \ 'tags',
            \ 'tags.tmp',
            \ 'tags.lock',
            \ 'webpack.config.js' ]
" }}}
" Lightline {{{
let g:lightline = {
\   'enable' : {
\       'tabline': 1,
\       'statusline': 1
\   },
\   'tabline' : {
\     'left': [ ['tabs'] ],
\     'right': [ [ 'sessionwidget' ] ],
\     'tabline_separator'  : {'left': "\ue0b0", 'right':''},
\     'tabline_subseparator':{'left':'|', 'right':'|'}
\   },
\   'colorscheme': 'nord',
\   'active'   : {
\     left': [[ 'mode', 'paste' ],
\              [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified', 'gutentags' ] ]
\   },
\   'tab_component_function': {
\   'filename': 'LightlineTabname'
\   },
\   'component_function' : {
\   'gitbranch': 'fugitive#head',
\   'gutentags': 'gutentags#statusline',
\   'cocstatus': 'coc#status', 
\   'modified': 'LightlineModified',
\   'filetype': 'LightlineFiletype',
\   'readonly': 'LightlineReadonly',
\   },
\   'component_expand' : {
\   'mytabline': 'MyTabLine',
\   'sessionwidget': 'SessionWidget'
\   },
\   'separator'  : {'left': "\ue0b0", 'right':''},
\   'subseparator':{'left':'|', 'right':'|'}
\}

function! LightlineModified() abort
    return &modified ? '●' : ''
endfunction

function! LightlineFiletype() abort
    let l:icon = WebDevIconsGetFileTypeSymbol()
    return winwidth(0) > 86 ? (strlen(&filetype) ? &filetype . ' ' . l:icon : l:icon) : ''
endfunction

function! LightlineReadonly() abort
    return &readonly ? '' : ''
endfunction

function! LightlineTabname(n) abort
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let currentBuffPath = bufname(buflist[winnr - 1])
    return fnamemodify(currentBuffPath, ":h:t") . "/" . fnamemodify(currentBuffPath, ":t")
endfunction

" Required for MyTabLine()
function! MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let currentBuffPath = bufname(buflist[winnr - 1])
    return fnamemodify(currentBuffPath, ":h:t") . "/" . fnamemodify(currentBuffPath, ":t")
endfunction

" Our custom TabLine function
function! MyTabLine() 
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%=%#diffadd#'
            let s .= '%#TabLineSel#'
        els
            let s .= '%#TabLine#'
        endif
        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

    endfor

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'
    return s
endfunction

function! SessionWidget()
    let s = '%=' " Right-align after this
    if exists('g:this_obsession')
        let s .= '%#search#' " Use the "Search" color if in a session
    endif

    " add vim-obsession status if available
    if exists(':Obsession')
        let s .= "%{ObsessionStatus()}"
        if exists('v:this_session') && v:this_session != ''
            let s:obsession_string = v:this_session
            let s:obsession_parts = split(s:obsession_string, '/')
            let s:obsession_filename = s:obsession_parts[-1]
            let s .= ' ' . s:obsession_filename . ' '
            let s .= '%*' " Restore default color
        endif
    endif

    return s
endfunction
" }}}
" PDV (PHP Doc) {{{
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
nnoremap <leader>k :call pdv#DocumentWithSnip()<CR>
"}}}
" Enable Matchit plugin {{{
runtime macros/matchit.vim
" }}}
" UltiSnips {{{
" let g:UltiSnipsListSnippets = "<F3>"
" let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips/", "UltiSnips/"]
" let g:UltiSnipsExpandTrigger = "<F6>"
" }}}
" Vimwiki markdown support {{{
let g:vimwiki_ext2syntax = {  '.md': 'markdown', 
            \ '.markdowon': 'markdown', 
            \ '.mkd': 'markdown', 
            \ '.mdown' :'markdown'}
let g:instant_markdown_autostart = 0
" }}}
" Gutentags {{{
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['package.json', '.git']
let g:gutentags_cache_dir = expand('~/.cache/nvim/ctags/')
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')

let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_trace=0

augroup MyGutentagsStatusLineRefresher
    autocmd!
    autocmd User GutentagsUpdating call lightline#update()
    autocmd User GutentagsUpdated call lightline#update()
augroup END
" }}}
" FZF {{{
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
set rtp+=~/.fzf
let g:fzf_layout = { 'down': '40%' }
" Allow passing optional flags into the Rg command.
autocmd VimEnter * command! -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-hidden --no-heading --smart-case --color=always '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('right:60%')
            \           : fzf#vim#with_preview('right:0%:hidden', '?'),
            \   <bang>0)

let g:fzf_files_options = '--preview "bat --color always --style=numbers --color=always {} | head -500"'

"}}}
" FASD change CWD {{{
" Z - cd to recent / frequent directories
command! -nargs=* Z :call Z(<f-args>)
function! Z(...)
    let cmd = 'fasd -d -e printf'
    for arg in a:000
        let cmd = cmd . '  ' . arg
    endfor
    let path = system(cmd)
    if isdirectory(path)
        echo path
        exec 'cd' fnameescape(path)
    endif
endfunction
nnoremap <leader>e :Z<Space>
" }}}
" Bbye {{{
set runtimepath^=~/.vim/bundle/bbye
" }}}
" Ncm2 {{{
" let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
" let $NVIM_PYTHON_LOG_LEVEL="DEBUG"
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
" autocmd BufEnter * call ncm2#enable_for_buffer()
" wrap existing omnifunc
"" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  :on_completg': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
" au User Ncm2Plugin call ncm2#register_source({
            " \ 'name' : 'css',
            " \ 'priority': 9,
            " \ 'subscope_enable': 1,
            " \ 'scope': ['css','scss'],
            " \ 'mark': 'css',
            " \ 'word_pattern': '[\w\-]+',
            " \ 'complete_pattern': ':\s*',
            " \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            " \ })
" Important\: :help Ncm2PopupOpen for more Information
" set completeopt=noinsert,menuone,noselect
" }}}
" PHPactor {{{
" Include use statement
nnoremap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nnoremap <Leader>mm :call phpactor#ContextMenu()<CR>
nnoremap <leader>mi :PhpactorImportClass<CR>
nnoremap <leader>go :PhpactorGotoDefinition<CR>
nnoremap <leader>t  :PhpactorTransform<CR>
nnoremap <leader>ga :PhpactorGenerateAccessors<CR>

" Goto definition of class or class member under the cursor
" nnoremap <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor 
" nnoremap <leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
" nnoremap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
" nnoremap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
" nnoremap <silent><leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
" vnoremap <silent><leader>ee :<C-u>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
" vnoremap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
" }}}
" vim-closetag {{{
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.php,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" }}}
"
" Ack.vim {{{
" Use ripgrep for searching
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
"  --smart case -> Search case insensitive if all lowecase pattern, search
"  case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'
" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1
" Any empty ack search will search for the word the cursor is on
let g:ack_use_cword_for_empty_search = 1
" Don't jump to first match
cnoreabbrev Ack Ack
" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>
" Navigate Quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
" }}}
" }}}
" }}}
" Colors {{{
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" github.com/joshdickonedark.vim
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < "https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" Enable true color 
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

set background=dark

syntax on
" colorscheme onedark
colorscheme nord

" OneDark theme options {{{'
let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
" }}}
highlight SignatureMarkText guifg=#E06C75 ctermfg=204
highlight CocErrorSign guifg=#E06C75 ctermfg=204
highlight CocWarningSign guifg=#d19a66 ctermfg=130
highlight CocInfoSign guifg=#e5c07d ctermfg=11
highlight CocHintSign guifg=#56b6c2 ctermfg=12
" }}}
" Options {{{
" Local directories {{{
set backupdir^=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set directory^=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
" }}}
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
" Configuration {{{
" Search using 'normal' regex {{{
nnoremap / /\v
vnoremap / /\v
" }}}
" Get rid of Help Key ( <F!> ) {{{
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}
" Set filetype= {{{
nnoremap <Leader>sf :set filetype=
" }}}
" Mappings from Nick Janetakis Video {{{
" Press * to search for the term under the cursor or a visual selection an 
" then press a key below to replace all instances of it in the current file.
nnoremap <leader>r :%s///g<Left><Left>
" Confirm each substition.
nnoremap <leader>rc :%s///gc<Left><Left><Left>
" Report the number of matches, do not actually substitute. 
nnoremap <leader>rn :%s///gcn<Left><Left><Left><Left>

" The same as above but instead of acting on the whole file it will be
" restricted to the previously visually selected range. You can do that 
" by pressing *, visually selecting the range you want it to apply to and then
" press a key below to replace all instances of it in the current selection.
xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

" Type a replacement term and press . to repeat the replacement again.
" Useful for replacing a few instances of the term (comparable to multiple
" cursors )
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn
" }}}
" Save/Quit vim moppings {{{
noremap <leader>w :w<CR>
noremap <C-s> :w<CR>
noremap <leader>wa :wa<CR>
" noremap <leader>qq :qa!<CR>
noremap <leader>wq :wqa<CR>
" }}}
" Find files by filename {{{
noremap <leader>fd :find<space>
" }}}
" Edit/Source vimrc {{{
" nnoremap <Leader>vi :vsp ~/.vimrc<Cr>
nnoremap <Leader>so :source ~/.vimrc<CR>
" }}}
" put current line at the center of screen {{{
nnoremap <leader>ff zz
" }}}
" <esc> is ;; {{{
inoremap kj <Esc>
" }}}
" <esc> exit terminal-mode && Fzef buffers{{{
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<C-\><C-n>"
" }}}
" Speed Up Scrolling {{{
nnoremap J 5j
nnoremap K 5k
xnoremap J 5j
xnoremap K 5k
" }}}
" Go to 23 line down start of file {{{
noremap <leader>gg gg23<C-e>
" }}}
" Splitting {{{
noremap <leader>v :vsplit<CR>
noremap <leader>s :split<CR>
noremap <leader>cl :close<CR>
noremap <leader>cd :cd 
" Open a new blank buffer in a vertical split
nnoremap vn :vnew<cr>
" Open a new blank buffer in a horizontal split
nnoremap <leader>sn :new<cr>
" }}}
" Faster Split resizing (+,-) {{{
if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
endif
" }}}
" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l) {{{
noremap gj <C-W>j
noremap gk <C-W>k
noremap gh <C-W>h
noremap gl <C-W>l
" }}}
" Tab Navigation {{{
"nnoremap th :tabfirst<CR>
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap tl :tablast<CR>
"nnoremap tt :tabedit<Space>
"nnoremap tn :tabnext<Space>
"nnoremap tm :tabm<Space>
nnoremap tc :tabclose<CR>
nnoremap te :tabedit<CR>
nnoremap tn :tabnext<CR>
noremap tp :tabprev<CR>
" }}}
" Tabs Switching {{{
nnoremap <C-l> gt
nnoremap <C-h> gT
" }}}
" Sudo write (,W) {{{
noremap <leader>W :w !sudo tee %<CR>
" }}}
" Remap :W to :w {{{
command! W write
" }}}
" Clear last search (,n) {{{
noremap <silent> <nowait> <Leader>n <Esc>:noh<CR>
" }}}
" Folding {{{
" toggle folds 
nnoremap <space> za

" close all folds
nnoremap <F4> :set foldlevel=1<CR>
" Open all folds
nnoremap <F5> zR
" Open fold below ( php class context )
nnoremap fzo 2jzO
" }}}
" Indent file {{{
noremap <F7> gg=G
" }}}
" Netrw {{{
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
" }}}
" Indentation based on filetype {{{
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType tpl setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType js  setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascript  setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vue setlocal shiftwidth=4 softtabstop=4 expandtab
augroup SmartyHTML
    autocmd!
    autocmd Filetype smarty set filetype=smarty.html
augroup END
autocmd FileType smarty.html  setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html.twig  setlocal shiftwidth=2 softtabstop=2 expandtab
" }}}
" fold level based on filetype {{{
autocmd FileType php setlocal foldlevel=1
" }}}
" Highlight last inserted text {{{
nnoremap <leader>gh `[v`]
" }}}
" Json syntax highlighting {{{
autocmd BufNewFile, BufRead * .json set ft=javascript
" }}}
" Relative numbers {{{
set relativenumber
:augroup numbertoggle
:autocmd!
:autocmd Bufenter,FocusGained,InsertLeave * set relativenumber
:autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END
" }}}
" Vim Sessions {{{
let g:sessions_dir = '~/.vim/vim-sessions'
exec 'nnoremap <Leader>ss :Obsession ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>sr :so ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
nnoremap <Leader>sp :Obsession!<CR>
" Save all open files, write this:session 
" If no session file yet, save Session.vim in current working dir.
" nnoremap <F2> :wa<Bar>exe "mksession! " . v:this_session . ""
" }}}
" Buffers {{{
augroup buffer_control
    autocmd!
    " Buffer navigation (,,) (gb) (gB) {{{
    nnoremap <Leader>, <C-^>
    nnoremap <Tab> :bnext<CR>
    nnoremap <S-Tab> :bprevious<CR>
    " Close current buffer properly  ( Bbye ) {{{
    nnoremap <Leader>q :Bdelete<CR>
    " Close all other buffers except current one {{{
    " nnoremap <leader>bd :<c-u>up <bar> %bd <bar> e#<cr>
    nnoremap <leader>bd :BufOnly<cr>
    " }}}
    " }}}
    " }}}
    " List Buffers with nb, accept a new buffer arg [1] {{{
    " nnoremap <leader>b :ls<CR>:b<Space>
    " }}}
augroup END
" }}}
" coc.nvim {{{
"
" " TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsplit<CR><Plug>(coc-definition)
nmap <silent> gsp :split<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use Y to show documentation in preview window.
nnoremap <silent> Y :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>k
" }}}
" Coc-snippet {{{
" use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" }}}
" Intelephense{{{
if executable('intelephense')
    augroup LspPHPIntelephense
    au!
    au User lsp_setup call lsp#register_server({
        \ 'name': 'intelephense',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'intelephense --stdio']},
        \ 'whitelist': ['php'],
        \ 'initialization_options': {'storagePath': '/tmp/intelephense'},
        \ 'workspace_config': {
        \   'intelephense': {
        \     'files': {
        \       'maxSize': 1000000,
        \       'associations': ['*.php', '*.phtml'],
        \       'exclude': [],
        \     },
        \     'completion': {
        \       'insertUseDeclaration': v:true,
        \       'fullyQualifyGlobalConstantsAndFunctions': v:false,
        \       'triggerParameterHints': v:true,
        \       'maxItems': 100,
        \     },
        \     'format': {
        \       'enable': v:true
        \     },
        \     'diagnostics': {
        \        'undefinedTypes': v:false
        \     }
        \   },
        \ }
        \})
  augroup END
endif
" }}}
" Ranger  {{{
let g:ranger_map_keys = 0
" (rafaqz) {{{
" map <leader>rr :RangerEdit<cr>
" map <leader>rv :RangerVSplit<cr>
" map <leader>rs :RangerSplit<cr>
" map <leader>rt :RangerTab<cr>
" map <leader>ri :RangerInsert<cr>
" map <leader>ra :RangerAppend<cr>
" map <leader>rd :RangerCD<cr>
" map <leader>rld :RangerLCD<cr>
"}}}
" }}}
" Fugitive {{{
nnoremap gs :Gstatus<Cr>
" Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete
" }}}
" }}}
" vim: foldmethod=marker:foldlevel=0:
