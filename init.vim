if has("nvim")
    echo ">^.^<"
endif

let $MYVIMHOME= expand('<sfile>:p:h')

source $MYVIMHOME/default.vim
source $MYVIMHOME/keymap.vim
source $MYVIMHOME/neovide.vim
source $MYVIMHOME/package.vim
