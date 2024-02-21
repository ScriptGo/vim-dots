" 禁用兼容模式
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 禁用分发插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1
let g:loaded_shada_plugin = 1
let g:loaded_tutor_mode_plugin = 1

let g:netrw_nogx = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
set fileformats=unix,dos,mac
set helplang=cn,en

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                      " 启用行号显示
set relativenumber              " 启用相对行号
set cursorline                  " 高亮显示当前行
set colorcolumn=80              " 高亮第80列
syntax enable                   " 开启语法高亮
syntax on                       " 自动语法高亮

set showtabline=2               " 启用标签栏
set signcolumn=yes              " 启用侧边栏
set laststatus=2                " 启用状态栏
set noshowcmd                   " 启用显示命令
set ruler                       " 启用显示光标位置

set lazyredraw                  " 延迟绘制
set equalalways                 " 
set splitbelow                  " 水平切割窗口时，新窗口放到当前窗口下边
set splitright                  " 水平切割窗口时，新窗口放到当前窗口右边

set showmatch                   " 显示匹配的括号
set matchtime=5                 " 显示括号匹配的时间

set nowrap                      " 禁止折行
set whichwrap+=<,>,[,],h,l      " 设置光标键跨行
set formatoptions+=m            " 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=B            " 合并两行中文时，不在中间加空格
set backspace=eol,start,indent  " 使用回车键正常处理indent,eol,start等
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set display=lastline            " 显示最后一行

set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时忽略大小写
set gdefault            " 替换时，缺省启用g标志，即同一行里的所有匹配都会被替换
set nowrapscan          " 禁止在搜索到文件两端时重新搜索
set smartcase           " 默认忽略大小写，除非搜索内容包含大写字母

set clipboard=unnamedplus
set hidden
set browsedir=buffer    " 设定文件浏览器目录为当前目录
set autochdir           " 自动切换当前目录为当前文件所在的目录
set nobackup            " 禁止备份
set noswapfile          " 禁止生成交换文件
set noundofile          " 禁用undo文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认
set undofile            " 启用撤销操作
set undolevels=10000    " 撤销历史

set mouse=a              " 启用鼠标
set selectmode=mouse,key " 使用鼠标或按键进行选择
set selection=inclusive  " 从光标处进行选择
set mousemodel=popup     " 显示弹出菜单
set mousehide            " 键盘输入时隐藏鼠标光标

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缩进
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab            " 用空格替代tab
set tabstop=4            " 一个tab等于4个空格
set softtabstop=4        " 软制表符宽度(设置4个空格为制表符)
set shiftround
set shiftwidth=4         " >> << 时移动长度
set smarttab             " 在行和段开始处使用制表符
set autoindent           " 自动缩进
set smartindent          " 智能的选择对其方式

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable         " 启用代码折叠
set foldmethod=syntax  " 
set foldlevel=99
set foldlevelstart=99
set foldcolumn=1
set fillchars=fold:\ ,foldopen:,foldclose:,foldsep:\│,diff:─,eob:\ ,vert:\▕

"----------------------------------------------------------------------
" 文件类型微调
"----------------------------------------------------------------------
augroup InitFileTypesGroup
" 清除同组的历史 autocommand
  autocmd!
" markdown 允许自动换行
  autocmd FileType markdown setlocal wrap
" quickfix 隐藏行号
  autocmd FileType qf setlocal nonumber

" 强制对某些扩展名的 filetype 进行纠正
  autocmd BufRead,BufNewFile *.red,*.reds set filetype=red
augroup END

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

set grepprg     = "rg --vimgrep --no-heading --smart-case"
set grepformat  = "%f:%l:%c:%m,%f:%l:%m"