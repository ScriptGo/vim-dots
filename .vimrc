" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 配置目录
let s:home = '~/.vim'

" 载入命令
command! -nargs=1 LoadScript exec 'so 's:home.'/'.'<args>'

" 载入配置模块
LoadScript config/basic.vim
LoadScript config/plugins.vim
LoadScript config/style.vim
LoadScript config/keymaps.vim
