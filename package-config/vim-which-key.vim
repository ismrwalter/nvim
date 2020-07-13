call which_key#register('<Space>', "g:which_key_map")
let g:which_key_use_floating_win=0
set timeoutlen=100
nnoremap <silent> <leader>      :<c-u>WhichKey '<space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>

" 隐藏 whichkey 的statusline
augroup which_key
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END


