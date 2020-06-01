let g:NERDTreeDirArrowExpandable = '❑'
let g:NERDTreeDirArrowCollapsible = '❐'
let g:NERDTreeStatusline = '%#NonText#'
let NERDTreeMinimalUI = 1
nnoremap <leader>vf :NERDTreeToggle<CR>


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "↯",
    \ "Untracked" : "✭",
    \ "Renamed"   : "✒",
    \ "Unmerged"  : "↭",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
