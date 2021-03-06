if exists('g:loaded_fzf_win_resizer')
    finish
endif

let g:loaded_fzf_win_resizer = 1

" when window is too narrow, make sure to expand fzf width to full width
function! FZFSetWinSize()
    let width_default = exists('g:fzf_win_resizer_width') ? g:fzf_win_resizer_width : 0.7
    let height_default = exists('g:fzf_win_resizer_height') ? g:fzf_win_resizer_height : 0.5
    let min_column = 100
    let min_line = 30
    let width_full = 0.9
    let height_full = 0.9
    let width = &columns < min_column ? width_full : width_default
    let height = &lines < min_line ? height_full : height_default

    " reset the fzf win size
    let g:fzf_layout = { 'window': { 'width': width, 'height': height } }
endfunction

augroup fzf_win_resize
    autocmd!
    autocmd VimResized * call FZFSetWinSize()
    autocmd VimEnter * call FZFSetWinSize()
augroup END

