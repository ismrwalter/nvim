if has('termguicolors')
    set termguicolors
    "let ayucolor="light"  " for light version of theme
    let ayucolor="mirage" " for mirage version of theme
    "let ayucolor="dark"   " for dark version of theme
    colorscheme ayu
else
    if PlugExist('onedark.vim')
        colorscheme onedark
    endif
endif
