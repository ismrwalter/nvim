call plug#begin('~/.vim/package')
Plug 'vim-scripts/fcitx.vim'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
Plug 'luochen1990/rainbow'

Plug 'shougo/unite.vim'
" fzf 集成
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 文件管理
Plug 'preservim/nerdtree'
" Git 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" 自动设置项目根目录
Plug 'airblade/vim-rooter'
" 自动格式化代码
Plug 'Chiel92/vim-autoformat'


" 编辑相关 {{{
" 自动括号
Plug 'jiangmiao/auto-pairs'
" 注释插件
Plug 'preservim/nerdcommenter'
" 高亮当前光标的关键字
Plug 'RRethy/vim-illuminate'
" 代码换行切换
Plug 'AndrewRadev/splitjoin.vim'
" 方便编辑成对出现的代码
Plug 'tpope/vim-surround'
" 快速跳转
Plug 'easymotion/vim-easymotion'
" 增强f和t
Plug 'rhysd/clever-f.vim'
" 增强书签
Plug 'MattesGroeger/vim-bookmarks'
Plug 'brooth/far.vim'
" }}}

" lsp支持
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 安装完成后需要执行 :CocInstall coc-json coc-tsserver
" 代码片段
Plug 'honza/vim-snippets'

call plug#end()



" 启动时自动安装缺少的插件
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif

