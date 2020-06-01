if has("nvim")
    echo ">^.^<"
endif

source $HOME/.config/nvim/default.vim
source $HOME/.config/nvim/keymap.vim
source $HOME/.config/nvim/neovide.vim

let g:airline#extensions#coc#enabled = 1
source $HOME/.config/nvim/package.vim

source $HOME/.config/nvim/package-config/ui.vim
source $HOME/.config/nvim/package-config/nerdtree.vim
source $HOME/.config/nvim/package-config/coc.nvim.vim
source $HOME/.config/nvim/package-config/vim-bookmarks.vim


