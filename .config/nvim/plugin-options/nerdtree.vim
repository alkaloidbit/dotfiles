" NERDTree {{{
" Dont confirm for deleting opened buffer when deleting file 
" fron NERDTree
let NERDTreeAutoDeleteBuffer=1
" AutoCD when NERDTreeRootDir change
let NERDTreeChDirMode=2
" Ignore list {{{
let NERDTreeIgnore=['node_modules', 
            \ 'package-lock.json',
            \ 'package.json',
            \ 'postcss.config.js',
            \ 'coc-settings.json',
            \ 'tags',
            \ 'tags.tmp',
            \ 'tags.lock',
            \ 'webpack.config.js' ]
" }}}
" }}}
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = ' '
let NERDTreeDirArrowCollapsible = ' '
" vim: foldmethod=marker:foldlevel=0:
