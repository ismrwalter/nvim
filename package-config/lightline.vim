function! LightlineGitBlame() abort
    let blame = get(b:, 'coc_git_blame', '')
    " return blame
    return winwidth(0) > 120 ? blame : ''
endfunction

" lightline
let g:lightline = {
            \ 'colorscheme': 'ayu',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste', 'bufferlist' ] ]
            \ },
            \ 'component': {
            \   'bufferlist': '%{bufferline#refresh_status()}'.bufferline#get_status_string()
            \ }
            \ }
