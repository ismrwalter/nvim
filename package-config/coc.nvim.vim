let g:coc_global_extensions = ['coc-json', 
            \ 'coc-tsserver', 
            \ 'coc-vimlsp',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-rls',
            \ 'coc-python',
            \ 'coc-bookmark',
            \ 'coc-css',
            \ 'coc-git',
            \ 'coc-highlight',
            \ 'coc-html',
            \ 'coc-snippets',
            \ 'coc-svg']

let g:coc_node_path = trim(system('which node'))
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

autocmd CursorHold * silent call CocActionAsync('highlight')
