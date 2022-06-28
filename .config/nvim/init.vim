set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let mapleader=","   

let g:node_client_debug = 0
let $NODE_CLIENT_LOG_FILE = '/home/fred-badlieutenant/.config/nvim/logs/nodefile'

" plugins {{{
call plug#begin('~/.vim-plug/plugged')

runtime plugs.vim

call plug#end()
" }}}

" options {{{
runtime options.vim
runtime! plugin-options/*.vim
" }}}

" mappings {{{
runtime mappings.vim
runtime! plugin-mappings/*.vim
" }}}

" colors {{{
runtime colors.vim
" }}}

" commands {{{
runtime commands.vim 
" }}}

" Matchit  {{{
runtime macros/matchit.vim
" }}}

" highlight {{{
runtime highlights.vim
" }}}
"
au BufRead,BufNewFile *.tpl set filetype=smarty
