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

syntax on
" colorscheme dracula
" colorscheme onedark
colorscheme nord

" OneDark theme options {{{
let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
" }}}
 
" Nord theme options {{{
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
"" }}}

highlight SignatureMarkText guifg=#E06C75 ctermfg=204
highlight CocErrorSign guifg=#E06C75 ctermfg=204
highlight CocWarningSign guifg=#d19a66 ctermfg=130
highlight CocInfoSign guifg=#e5c07d ctermfg=11
highlight CocHintSign guifg=#56b6c2 ctermfg=12

set background=dark
" }}}
" vim: foldmethod=marker:foldlevel=0:
