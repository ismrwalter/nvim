" 注释符号后添加空格
let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

let g:which_key_map['c']['c'] = 'comment'
map <silent> <leader>cc <plug>NERDCommenterComment
let g:which_key_map['c']['u'] = 'uncomment'
map <silent> <leader>cu <plug>NERDCommenterUncomment

