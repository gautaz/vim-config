execute pathogen#infect()

set modeline
set hidden
set confirm
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set laststatus=2
set backspace=indent,eol,start
set scrolloff=7
set showcmd
set omnifunc=syntaxcomplete#Complete
colorscheme jellybeans
syntax on
filetype plugin indent on

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

let g:formatprg_css = s:path."/helpers/autoformat/css-beautify.sh"
let g:formatprg_html = s:path."/helpers/autoformat/html-beautify.sh"

noremap <leader>f :Autoformat<CR>
