let g:onedark_termcolors=256
if has('termguicolors')
    set termguicolors
    "let ayucolor="light"  " for light version of theme
    let ayucolor="mirage" " for mirage version of theme
    "let ayucolor="dark"   " for dark version of theme
    colorscheme ayu
else
    colorscheme onedark
endif

" IndentLine {{
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
" }}

let g:lightline = {
            \ 'colorscheme': 'ayu',
            \ }

let g:rainbow_active = 1
