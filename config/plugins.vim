call plug#begin('~/.vim/plugged')

" UI
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'

" File Management
Plug 'lambdalisue/fern.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'

" 
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'

call plug#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fern
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <F2> :Fern . -drawer -width=20 -toggle -reveal=%<CR>

let g:fern#disable_default_mappings = 1   " 关闭默认按键绑定
let g:fern#default_hidden=1               " 显示隐藏文件
let g:fern#renderer = 'nerdfont'          " 启用Nerd字体图标

function! s:init_fern() abort
  setlocal nonumber
  setlocal norelativenumber
  setlocal nocursorcolumn
  nmap <buffer><silent><expr>
        \ <Plug>(fern-my-preview-or-nop)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:edit)\<C-w>p",
        \   "",
        \ )
  nmap <buffer><silent><expr> j
        \ fern#smart#drawer(
        \   "j\<Plug>(fern-my-preview-or-nop)",
        \   "j",
        \ )
  nmap <buffer><silent><expr> k
        \ fern#smart#drawer(
        \   "k\<Plug>(fern-my-preview-or-nop)",
        \   "k",
        \ )

  nmap <buffer><nowait> l <Plug>(fern-action-enter)
  nmap <buffer><nowait> h <Plug>(fern-action-leave)
  nmap <buffer><nowait> r <Plug>(fern-action-reload)
  
  nmap <buffer><nowait> n <Plug>(fern-action-new-file)
  nmap <buffer><nowait> d <Plug>(fern-action-new-dir)

  nmap <buffer><nowait> t <Plug>(fern-action-open:tabedit)
  nmap <buffer><nowait> T <Plug>(fern-action-open:tabedit)gT
  nmap <buffer><nowait> s <Plug>(fern-action-open:split)
  nmap <buffer><nowait> v <Plug>(fern-action-open:vsplit)

  nmap <buffer><nowait> R <Plug>(fern-action-rename)
  nmap <buffer><nowait> y <Plug>(fern-action-copy)
  nmap <buffer><nowait> m <Plug>(fern-action-move)
  nmap <buffer><nowait> D <Plug>(fern-action-trash)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END


