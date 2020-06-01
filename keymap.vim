noremap <Space> <Nop>
" 设置 leaderkey
let g:mapleader = "\<Space>"
let g:maplocalleader = ","

noremap H ^
noremap L $

" 命令模式使用Emacs按键绑定 {{{
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
" }}}
" 取消搜索高亮显示
noremap <leader><cr> :nohlsearch<CR>
noremap <leader>.e :edit $MYVIMRC<CR>
noremap <leader>.l :source $MYVIMRC<cr>

noremap <leader><leader> :Commands<CR>
noremap <leader>ff :Files<CR>
noremap <leader>bb :Buffers<CR>

noremap <leader>ws :split
noremap <leader>wv :vsplit
noremap <leader>ww <C-w>w
noremap <leader>wh <C-w>h
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wl <C-w>l

