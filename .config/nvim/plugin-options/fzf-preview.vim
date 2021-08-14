" FZF-Preview {{{
augroup fzf_preview
    autocmd!
    autocmd User fzf_preview#coc#initialized call s:fzf_preview_settings() " fzf_preview#remote#initialized or fzf_preview#coc#initialized
augroup END

function! s:fzf_preview_settings() abort
    let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command 
    let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' .g:fzf_preview_grep_preview_cmd
endfunction

" use vim-devicons
let g:fzf_preview_use_dev_icons = 1

let g:fzf_preview_default_fzf_options = { '--reverse': v:false, '--preview-window': 'wrap' }