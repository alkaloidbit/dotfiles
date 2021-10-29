" Configuration mappings {{{
" misc {{{
nnoremap gb :ls<CR>:b<Space>
nnoremap ,z :Z<Space>
" }}}
" Search using 'normal' regex {{{
nnoremap / /\v
vnoremap / /\v
" }}}
" Get rid of Help Key ( <F!> ) {{{
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}
" Rip-grep {{{
nnoremap <leader>rg :Rg<space>
nnoremap <leader>RG :exec "Rg ".expand("<cword>")<cr>
" }}}
" Set filetype= {{{
nnoremap <Leader>sf :set filetype=
" }}}
" Mappings from Nick Janetakis Video {{{
" Press * to search for the term under the cursor or a visual selection an 
" then press a key below to replace all instances of it in the current file.
noremap <leader>r :%s///g<Left><Left>
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
noremap <leader>xx :qa!<CR>
" }}}
" Find files by filename {{{
" noremap <leader>fd :find<space>
" }}}
" Edit/Source vimrc {{{
" nnoremap <Leader>vi :vsp ~/.vimrc<Cr>
nnoremap <Leader>so :source ~/.config/nvim/init.vim<CR>
" }}}
" put current line at the center of screen {{{
" nnoremap <leader>ff zz
" }}}
" <esc> is ;; {{{
inoremap kj <Esc>
inoremap KJ <Esc>
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
" Tabs Navigation {{{
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
" Tabs ordering {{{
nnoremap t- :tabm-<CR>
nnoremap t+ :tabm+<CR>
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

nnoremap flv0 :set foldlevel=0<CR>
nnoremap flv1 :set foldlevel=1<CR>
nnoremap flv2 :set foldlevel=2<CR>
nnoremap flv3 :set foldlevel=3<CR>
nnoremap flv4 :set foldlevel=4<CR>
nnoremap flv5 :set foldlevel=5<CR>
nnoremap flv6 :set foldlevel=6<CR>
nnoremap flv7 :set foldlevel=7<CR>
nnoremap flv8 :set foldlevel=8<CR>

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
autocmd FileType js  setlocal shiftwidth=4 softtabstop=2 expandtab
autocmd FileType javascript  setlocal shiftwidth=4 softtabstop=2 expandtab
autocmd FileType vue setlocal shiftwidth=4 softtabstop=2 expandtab
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
nnoremap <Leader>sp :Obsession<CR>

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
