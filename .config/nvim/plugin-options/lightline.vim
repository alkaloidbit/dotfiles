" itchyny/lightline.vim {{{
" 'tabline': {
" 'left': [ ['tabs'] ],
" 'left': [['explorer_pad'], ['buffers']],
" }
let g:lightline = {
    \   'colorscheme': 'nord',
    \   'active': {
    \    'left' :[[ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified',  'gitgutter', 'gutentags' ]],
    \    'right': [[ 'filetype',  'lineinfo', 'percent' ], [ 'currentFunction', 'cocstatus' ]]
    \   },
    \   'tabline': {
    \     'left': [ ['tabs'] ],
    \     'right': [['gitbranch', 'smarttabs', 'sessionwidget', ]]
    \   },
    \   'tab': {
    \      'active': [ 'filename', 'modified' ],
    \      'inactive': [ 'filename', 'modified' ]  
    \   },
    \   'separator': {
    \     'left': '', 'right': ''
    \   },
    \   'subseparator': {
    \     'left': '', 'right': ''
    \   },
    \   'component_raw': {
    \     'buffers': 1
    \   },
    \   'tab_component_function': {
    \     'filename': 'LightlineTabName',
    \     'modified': 'LightlineTabModified'
    \   },
    \   'component_function': {
    \     'explorer_pad': 'lightline#explorer_pad#left_pad',
    \     'percent': 'LightlinePercent',
    \     'lineinfo': 'LightlineLineinfo',
    \     'filename': 'LightlineFilename',
    \     'fullname': 'LightlineFullname',
    \     'gitgutter': 'LightLineGitGutter',
    \     'mode': 'LightlineMode',
    \     'gitbranch': 'LightlineGitbranch',
    \     'readonly': 'LightlineReadonly',
    \     'modified': 'LightlineModified',
    \     'filetype': 'LightlineFiletype',
    \     'cocstatus': 'LightlineCoc',
    \     'currentfunction': 'CocCurrentFunction'
    \   },
    \   'component_expand': {
    \     'buffers': 'lightline#bufferline#buffers',
    \     'smarttabs': 'SmartTabsIndicator',
    \     'sessionwidget': 'SessionWidget',
    \     'trailing': 'lightline#trailing_whitespace#component'
    \   },
    \   'component_type': {
    \     'buffers': 'tabsel',
    \     'trailing': 'warning'
    \   }
\}

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! s:trim(maxlen, str) abort
    let trimed = len(a:str) > a:maxlen ? a:str[0:a:maxlen] . '..' : a:str
    return trimed
endfunction

function! LightlineCoc() abort
    if winwidth(0) < 60
        return ''
    endif

    return coc#status()
endfunction

function! LightlinePercent() abort
    if winwidth(0) < 60
        return ''
    endif

    let l:percent = line('.') * 100 / line('$') . '%'
    return printf('%-4s', l:percent)
endfunction

function! LightlineTabName(n) abort
    let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
    let fname = expand('#' . bufnr . ':t')
    " filetype icon
    let l:icon = WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
    return fname =~ 'NERD_tree' ? 'EXPLORER' : 
        \ ('' != fname ? l:icon.' '.fname : '[No Name]') 
endfunction

function! LightlineTabModified(n) abort
    let winnr = tabpagewinnr(a:n)
    return gettabwinvar(a:n, winnr, '&modified') ? '●' : gettabwinvar(a:n, winnr, '&modifiable') ? '' : '-'
endfunction

function! LightlineLineinfo() abort
    if winwidth(0) < 86
        return ''
    endif

    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = ' ' . l:current_line . '/' . l:max_line
    return l:lineinfo
endfunction

function! LightlineFilename() abort
    let l:prefix = expand('%:p') =~? "fugitive://" ? '(fugitive) ' : ''
    let l:maxlen = winwidth(0) - winwidth(0) / 2
    let l:relative = expand('%:.')
    let l:tail = expand('%:t')
    let l:noname = 'No Name'


    if winwidth(0) < 50
        return ''
    endif

    if winwidth(0) < 86
        return l:tail ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:tail)
    endif

    return l:relative ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:relative)
endfunction

function! LightlineFullname() abort
    let l:relative = expand('%')

    return l:relative
endfunction

function! LightlineModified() abort
    return &modified ? '●' : ''
endfunction

function! LightlineMode() abort
    let ftmap = {
                \ 'coc-explorer': 'EXPLORER',
                \ 'fugitive': 'FUGITIVE',
                \ 'vista': 'OUTLINE',
                \ 'nerdtree': 'EXPLORER'
                \ }
    return get(ftmap, &filetype, lightline#mode())
endfunction

function! LightlineReadonly() abort
    let ftmap = {
                \ 'coc-explorer': '',
                \ 'fugitive': '',
                \ 'vista': '',
                \ 'nerdtree': ''
                \ }
    let l:char = get(ftmap, &filetype, '')
    return &readonly ? l:char : ''
endfunction

function! LightLineGitGutter()
    if ! exists('*GitGutterGetHunkSummary')
          \ || ! get(g:, 'gitgutter_enabled', 0)
          \ || winwidth('.') <= 90
      return ''
    endif
    let symbols = [
          \ g:gitgutter_sign_added,
          \ g:gitgutter_sign_modified,
          \ g:gitgutter_sign_removed
          \ ]
    let hunks = GitGutterGetHunkSummary()
    let ret = []
    for i in [0, 1, 2]
      if hunks[i] > 0
        call add(ret, symbols[i] . hunks[i])
      endif
    endfor
    return join(ret, ' ')
endfunction

function! LightlineGitbranch() abort
    if exists('*fugitive#head')
        let maxlen = 20
        let branch = fugitive#head()
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return fugitive#head()
endfunction


function! LightlineFiletype() abort
    let l:icon = WebDevIconsGetFileTypeSymbol()
    return winwidth(0) > 86 ? (strlen(&filetype) ? &filetype . ' ' . l:icon : l:icon) : ''
endfunction

function! String2()
    return 'BUFFERS'
endfunction

function! SmartTabsIndicator() abort
    let tabs = lightline#tab#tabnum(tabpagenr())
    let tab_total = tabpagenr('$')
    return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload() abort
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! SessionWidget()
    let s = '%=' " Right-align after this
    if exists('g:this_obsession')
         let s .= ' %#search#' " Use the "Search" color if in a session
    endif

    " add vim-obsession status if available
    if exists(':Obsession')
        let s .= " %{ObsessionStatus()}"
        if exists('v:this_session') && v:this_session != ''
            let s:obsession_string = v:this_session
            let s:obsession_parts = split(s:obsession_string, '/')
            let s:obsession_filename = s:obsession_parts[-1]
            let s .= ' ' . s:obsession_filename . ' '
            let s .= '%*' " Restore default color
        endif
    endif

    return s
endfunction

let g:lightline#trailing_whitespace#indicator = ''
" }}}

