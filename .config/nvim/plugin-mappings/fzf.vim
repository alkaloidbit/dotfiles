" FZF {{{
" if focus is on NERDTree buffer, switch to next split before opening FzF  
noremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"

" Map a few common things to do with FZF.
nnoremap <silent> <leader>ls :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <Leader>. :BTags<CR>
nnoremap <silent> <leader>d :Files <C-r>=expand("%:h")<CR>/<CR>
" }}}
