" 基本设置 {{{
" 命令行高度
set cmdheight=1
" 行号
set number
" 显示相对行号
"set relativenubmer

" 语法高亮
syntax on

" 显示当前模式
set showmode

" 显示命令
set showcmd

" 启动256色
set t_Co=256

" 高亮当前行
set cursorline

"换行
set textwidth=100 " 设置行宽
set wrap " 根据行宽换行
" set nowrap
set linebreak " 只在空格等符号位置换行
set wrapmargin=2 " 换行处距离窗口的字符数

" 滚动时光标到边框的距离
set scrolloff=5 "垂直
set sidescrolloff=15 "水平

" 状态栏：0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set laststatus=2

" 在状态栏显示光标位置
set ruler

" 高亮匹配的括号
set showmatch

" 搜索 {{{
set hlsearch " 高亮搜索结果
set incsearch " 搜索时自动跳转到第一个匹配的结果
set ignorecase " 搜索时忽略大小写
" }}}

" 拼写检查
"set spell spelllang=en_us


" 自动切换工作目录
set autochdir

" 错误提示
set noerrorbells " 出错时，不要发出响声
set visualbell " 开启出错视觉提示

" 保存的历史操作数
set history=1000

" 自动重新加载文件
set autoread

" 显示尾行的空格
set listchars=tab:»■,trail:■
set list

" Tab补全命令
set wildmenu
set wildchar=<Tab>
set wildcharm=<Tab>
" set wildmode=longest:list,full

set hidden
set updatetime=300
set shortmess+=c 
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

" 不与 vi 兼容
set nocompatible
" 默认编码
set encoding=utf-8

" set guifont=Sarasa\ Mono\ SC 18
set guifont=*

" 缩进 {{{
filetype indent on " 根据文件类型加载缩进规则
set autoindent " 缩进
set tabstop=2 " Tab 宽度
set softtabstop=2 " Tab转换为空格
set shiftwidth=4 " 缩进宽度（按下`>>` 增加的空格数）
set expandtab " 格式化时将存在的tab转换为空格
" }}}
set foldmethod=marker
" 取消隐藏符号
set conceallevel=1

" 备份文件 {{{
set nobackup " 不创建备份文件
set nowritebackup
set backupdir=~/.vim/.backup//  
" }}}

" swap文件（用于崩溃是恢复）{{{
set noswapfile "不创建swap文件
set directory=~/.vim/.swp//
" }}}

" undo文件，保存撤销记录 {{{
set noundofile "创建undo文件
set undodir=~/.vim/.undo// 
" }}}

" }}}

" Provider {{{
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog = trim(system('which python'))
let g:node_host_prog=trim(system('which node'))
let g:mkdp_browser = 'chromium'
" }}}

