" php-namespace {{{
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <leader>U <Esc>:call PhpInsertUse()<CR>
" }}}
" vim: foldmethod=marker:foldlevel=0:
