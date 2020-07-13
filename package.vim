let s:package_path = $MYVIMHOME.'/package'
call plug#begin(s:package_path)
Plug 'mhinz/vim-startify', { 'config':'vim-startify1' }
Plug 'vim-scripts/fcitx.vim'
Plug 'ybian/smartim'

" Plug 'joshdick/onedark.vim'

Plug 'ayu-theme/ayu-vim'

Plug 'Yggdroot/indentLine'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'bling/vim-bufferline'

Plug 'luochen1990/rainbow'

Plug 'liuchengxu/vim-which-key'

Plug 'caenrique/nvim-toggle-terminal'
" 语法高亮集合
Plug 'sheerun/vim-polyglot'

" fzf 集成
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }

" Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'ctrlpvim/ctrlp.vim'
" 文件管理
Plug 'preservim/nerdtree'
" 显示Git文件变化
Plug 'Xuyuanp/nerdtree-git-plugin'
" 自动设置项目根目录
Plug 'airblade/vim-rooter'
" 自动格式化代码
Plug 'Chiel92/vim-autoformat'
" 自动括号
Plug 'jiangmiao/auto-pairs'
" 注释插件
" Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'
" 高亮当前光标的关键字
Plug 'RRethy/vim-illuminate'
" 代码换行切换
Plug 'AndrewRadev/splitjoin.vim'
" 方便编辑成对出现的代码
Plug 'tpope/vim-surround'
" 快速跳转
"Plug 'easymotion/vim-easymotion'
" 增强f和t
Plug 'rhysd/clever-f.vim'
"显示Mark
Plug 'kshenoy/vim-signature'
" lsp支持
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 安装完成后需要执行 :
" 代码片段
Plug 'honza/vim-snippets'

" markdown {{{
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
"}}}

call plug#end()



" 启动时自动安装缺少的插件
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif

function PlugExist(name)
    for key in keys(g:plugs)

        if key == a:name
            return 1
        endif
    endfor
    return 0
endfunction
let s:package_config_path = $MYVIMHOME.'/package-config'
for key in keys(g:plugs)
    let filename=key
    if has_key(g:plugs[key],'config')
        let filename=g:plugs[key]['config']
    endif
    let package=filename =~ '\.vim' ? filename : filename.'.vim'
    let package_path = s:package_config_path.'/'.package
    "echom 'source ' . s:package_path
    if filereadable(package_path)
        exec 'source ' . package_path
    else
        call writefile([],package_path,'')
    endif
endfor

