noremap H ^
noremap L $

vnoremap < <gv
vnoremap > >gv

" 命令模式使用Emacs按键绑定 {{{
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <expr> <C-p> pumvisible() ? '\<Left>' : '\<Up>'
cnoremap <expr> <C-n> pumvisible() ? '\<Right>' : '\<Down>'
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <c-p> <left>
cnoremap <c-n> <right>
" cnoremap <expr> <Tab>  pumvisible() ? '\<Down>' : '\<Tab>'
" }}}


" Leader 设置 {{{

noremap <Space> <Nop>
" 设置 leaderkey
let g:mapleader = "\<Space>"
let g:maplocalleader = ","

let g:which_key_map = {}


" 取消搜索高亮显示
let g:which_key_map['/'] = 'toggle search highlight'
noremap <leader>/ :nohlsearch<CR>
" vim配置 {{{

let g:which_key_map['.'] = { 'name' : '+vim' }
let g:which_key_map['.']['/'] = "reload config"
noremap <leader>./ :source $MYVIMRC<CR>
let g:which_key_map['.']['.'] = "load current file"
noremap <leader>.. :source %<cr>

"}}}



let g:which_key_map[' '] = { 'name' : '+command' }

let g:which_key_map['b'] = { 'name' : '+buffer' }
let g:which_key_map['b']['b'] = 'buffers'
noremap <leader>bb :Buffers<CR>
let g:which_key_map['b']['n'] = 'next buffer'
noremap <leader>bn :bnext<CR>
let g:which_key_map['b']['p'] = 'previous buffer'
noremap <leader>bp :bprevious<CR>
let g:which_key_map['b']['d'] = 'delete buffer'
noremap <leader>bd :bdelete<CR>

let g:which_key_map['c'] = { 'name' : '+content' }

let g:which_key_map['f'] = { 'name' : '+file' }

let g:which_key_map['w'] = { 'name' : '+window' }
let g:which_key_map['w']['s'] = 'split window'
noremap <leader>ws :split<cr>
let g:which_key_map['w']['v'] = 'vsplit window'
noremap <leader>wv :vsplit<cr>
let g:which_key_map['w']['w'] = 'switch window'
noremap <leader>ww <C-w>w
let g:which_key_map['w']['h'] = 'switch left window'
noremap <leader>wh <C-w>h
let g:which_key_map['w']['j'] = 'switch down window'
noremap <leader>wj <C-w>j
let g:which_key_map['w']['k'] = 'switch up window'
noremap <leader>wk <C-w>k
let g:which_key_map['w']['l'] = 'switch right window'
noremap <leader>wl <C-w>l
let g:which_key_map['w']['o'] = 'delete other window'
noremap <leader>wo <C-w>o
let g:which_key_map['w']['c'] = 'delete current window'
noremap <leader>wc <C-w>c


let g:which_key_map['p'] = { 'name' : '+project' }

" }}}
