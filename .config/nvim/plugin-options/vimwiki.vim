" Vimwiki markdown support {{{
let g:vimwiki_ext2syntax = {  '.md': 'markdown', 
            \ '.markdown': 'markdown', 
            \ '.mkd': 'markdown', 
            \ '.mdown' :'markdown'}

let g:vimwiki_list = [ {'path': '~/Documents/vimwiki/'}, {'path': '~/Documents/mdwiki/', 'ext': '.md', 'syntax': 'markdown'}, {'path': '~/Documents/vimwiki/currentwork/', 'ext': '.md', 'syntax': 'markdown'}]
let g:instant_markdown_autostart = 0
" }}}
" vim: foldmethod=marker:foldlevel=0:
