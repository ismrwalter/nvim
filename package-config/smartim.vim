let g:smartim_default = 'com.apple.keylayout.ABC'

" 由于<C-c> 不会触发 InsertLeave ,导致无法触发输入法切换，所以将<C-c>映射到<Esc>。
inoremap <C-c> <Esc><Esc>
