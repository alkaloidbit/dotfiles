set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let mapleader=","   

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
