" Startup {{{
filetype indent plugin on


" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

set nocompatible

set nobackup
set noswapfile
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
set guifont=FuraCode_NF:h14
colorscheme one
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set showtabline=2
set number
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=e
set nolist

" lightline {{{
set laststatus=2  " Basic
set noshowmode    " Disable show mode info

function! LightlineReadonly()
	return &readonly ? '' : ''
endfunction

let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'component': {
	\   'lineinfo': ' %3l:%-2v',
	\ },
	\ 'component_function': {
	\   'readonly': 'LightlineReadonly',
	\   'fugitive': 'LightlineFugitive'
	\ },
	\ 'separator': { 'left': "\ue0b8", 'right': "\ue0be" },
	\ 'subseparator': { 'left': "\ue0b9", 'right': "\ue0b9" },
	\ 'tabline': {
	\ 'separator': { 'left': "\ue0bc", 'right': "\ue0ba" },
	\ 'subseparator': { 'left': "\ue0bb", 'right': "\ue0bb" },
	\}
	\}
" }}}

autocmd StdinReadPre * let s:std_in=1
call plug#begin('$vimruntime/plugged')
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/artify.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
