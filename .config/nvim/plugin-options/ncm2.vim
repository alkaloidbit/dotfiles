" Ncm2 {{{
" let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
" let $NVIM_PYTHON_LOG_LEVEL="DEBUG"
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
" autocmd BufEnter * call ncm2#enable_for_buffer()
" wrap existing omnifunc
"" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  :on_completg': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
" au User Ncm2Plugin call ncm2#register_source({
            " \ 'name' : 'css',
            " \ 'priority': 9,
            " \ 'subscope_enable': 1,
            " \ 'scope': ['css','scss'],
            " \ 'mark': 'css',
            " \ 'word_pattern': '[\w\-]+',
            " \ 'complete_pattern': ':\s*',
            " \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            " \ })
" Important\: :help Ncm2PopupOpen for more Information
" set completeopt=noinsert,menuone,noselect
" }}}
" vim: foldmethod=marker:foldlevel=0:
