" FZF-Preview {{{
let s:bat_theme_option = '--theme=' . $FZF_PREVIEW_PREVIEW_BAT_THEME

" let g:fzf_preview_command = 'COLORTERM=truecolor bat ' . s:bat_theme_option . ' --color=always --plain --number {-1}'
" let g:fzf_preview_lines_command = 'COLORTERM=truecolor bat ' . s:bat_theme_option . ' --color=always --plain --number'
" let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' .g:fzf_preview_grep_preview_cmd
" let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=never --hidden'

augroup fzf_preview
    autocmd!
    autocmd User fzf_preview#coc#initialized call s:fzf_preview_settings()
augroup END

function! s:fzf_preview_settings() abort
    let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' .g:fzf_preview_grep_preview_cmd
    let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command 
endfunction

" use vim-devicons
let g:fzf_preview_use_dev_icons = 1

let g:fzf_preview_default_fzf_options = { '--reverse': v:false, '--preview-window': 'wrap' }

