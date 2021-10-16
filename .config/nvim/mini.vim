filetype plugin indent on
syntax on
set nocompatible
let g:plug_home = $HOME . '/.vim-plug/plugged'
let g:plug_url_format = 'https://github.com/%s'

execute 'source ' . g:plug_home . '/vim-plug/plug.vim'
silent! call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:coc_global_extensions = ['coc-fzf-preview']

" FZF-Preview {{{
augroup fzf_preview
    autocmd!
    autocmd User fzf_preview#coc#initialized call s:fzf_preview_settings() " fzf_preview#remote#initialized or fzf_preview#coc#initialized
augroup END

function! s:fzf_preview_settings() abort
    echom "Inside fzf_preview_settings()"
    let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command 
    let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' .g:fzf_preview_grep_preview_cmd
endfunction

" use vim-devicons
let g:fzf_preview_use_dev_icons = 1

let g:fzf_preview_default_fzf_options = { '--reverse': v:false, '--preview-window': 'wrap' }

function! s:myPopup(...)
    if has('nvim')
        let bufnr = nvim_create_buf(0, 1)
        let winid = nvim_open_win(bufnr, 0, {
            \ 'col': 10,
            \ 'row': 10,
            \ 'width': 10,
            \ 'height': 10,
            \ 'relative': 'editor',
            \ 'anchor': 'NW',
            \ 'focusable': 0,
            \ 'style': 'minimal',
            \ })
        call nvim_buf_set_lines(bufnr, 0, -1, 1, ['test1', 'test2'])
    else
        let winid = popup_create('', {
            \ 'col': 10,
            \ 'line': 10,
            \ })
        call popup_settext(winid, ['test1', 'test2'])
    endif
endfunction
call timer_start(1000, function('s:myPopup'))


function! s:restart(...)
    CocRestart
endfunction
call timer_start(3000, function('s:restart'))
