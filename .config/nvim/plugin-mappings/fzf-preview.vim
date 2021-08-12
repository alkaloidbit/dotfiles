" FZF-preview {{{
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> [fzf-p]p      :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs     :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga     :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b      :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B      :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]o      :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]t      :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q      :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]m      :<C-u>CocCommand fzf-preview.Marks<CR>
" }}}
