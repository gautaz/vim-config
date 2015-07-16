execute pathogen#infect()

set modeline
set hidden
set confirm
set noexpandtab shiftwidth=4 tabstop=4 softtabstop=0
set laststatus=2
set backspace=indent,eol,start
set scrolloff=7
set showcmd
set omnifunc=syntaxcomplete#Complete
set wildmenu
set wildmode=longest,list
colorscheme jellybeans
syntax on
filetype plugin indent on

autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

let mapleader=","

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let $PATH=s:path.'/helpers/path:'.$PATH

let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled=1
let g:airline_theme="wombat"

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

let g:formatters_javascript = ['jscs', 'jsbeautify_javascript']
let g:formatdef_custom_css = '"css-beautify -f - ".(&expandtab ? "-s ".&shiftwidth : "-t")'
let g:formatters_css = ['custom_css']
let g:formatdef_custom_html = '"html-beautify -f - ".(&expandtab ? "-s ".&shiftwidth : "-t")'
let g:formatters_html = ['custom_html']

noremap <leader>f :Autoformat<CR>
