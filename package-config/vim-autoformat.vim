let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
noremap <silent> == :Autoformat<cr>

let g:which_key_map['c']['f'] = 'format'
noremap <silent> <leader>cf :Autoformat<cr>
