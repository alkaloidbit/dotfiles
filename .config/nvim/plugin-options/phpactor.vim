" PHPactor {{{
" Include use statement
nnoremap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nnoremap <Leader>mm :call phpactor#ContextMenu()<CR>
nnoremap <leader>mi :PhpactorImportClass<CR>
nnoremap <leader>go :PhpactorGotoDefinition<CR>
nnoremap <leader>t  :PhpactorTransform<CR>
nnoremap <leader>ga :PhpactorGenerateAccessors<CR>

" Goto definition of class or class member under the cursor
" nnoremap <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor 
" nnoremap <leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
" nnoremap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
" nnoremap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
" nnoremap <silent><leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
" vnoremap <silent><leader>ee :<C-u>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
" vnoremap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>
" }}}
" vim: foldmethod=marker:foldlevel=0:
