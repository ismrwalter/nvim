let g:which_key_use_floating_win=0
set timeoutlen=1000
nnoremap <silent> <leader> :WhichKey '<leader>'<CR>
nnoremap <silent> <localleader> :WhichKey ','<CR>
" 隐藏 whichkey 的statusline
"
augroup which_key
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END
