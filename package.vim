let s:package_path = $MYVIMHOME.'/package'
call plug#begin(s:package_path)
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/fcitx.vim'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim' 
Plug 'bling/vim-bufferline' 
Plug 'luochen1990/rainbow'

Plug 'majutsushi/tagbar'

Plug 'shougo/unite.vim'
" fzf 集成
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 文件管理
Plug 'preservim/nerdtree'
" Git 
Plug 'Xuyuanp/nerdtree-git-plugin'
" 显示Git文件变化
Plug 'airblade/vim-gitgutter'
" 自动设置项目根目录
Plug 'airblade/vim-rooter'
" 自动格式化代码
Plug 'Chiel92/vim-autoformat'
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
    let s:package=key =~ '\.vim' ? key : key.'.vim'
    let s:package_path = s:package_config_path.'/'.s:package
    "echom 'source ' . s:package_path
    if filereadable(s:package_path)
        exec 'source ' . s:package_path
    else
        call writefile([],s:package_path,'')
    endif
endfor

