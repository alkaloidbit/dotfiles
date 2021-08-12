" NERDTree {{{
nnoremap <leader>b :OpenBookmark<Space>
nnoremap <leader>gf :NERDTreeFind<CR> 
nnoremap <silent> <F9> :NERDTreeToggle<CR>
" close NERDTree if last buffer
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" vim: foldmethod=marker:foldlevel=0:
