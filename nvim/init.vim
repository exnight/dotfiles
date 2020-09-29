set nocompatible
set termguicolors

filetype off
filetype plugin indent on

call plug#begin()

if has('nvim')
  Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
else
  Plug 'Shougo/deoplete.nvim',
  Plug 'roxma/nvim-yarp',
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'overcache/NeoSolarized'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax on
set background=dark
colorscheme NeoSolarized

set encoding=UTF-8
set relativenumber
set backspace=indent,eol,start

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

let g:deoplete#enable_at_startup = 1
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

let g:vimtex_comiler_engine = 'lualatex'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/snippets']

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

let g:airline_theme='papercolor'

let mapleader = "\<S>"
nnoremap <S-I> <C-w>k
nnoremap <S-K> <C-w>j
nnoremap <S-J> <C-w>h
nnoremap <S-L> <C-w>l

let g:NERDTreeMapOpenSplit="☻"
map <C-n> :NERDTreeToggle<CR>
nnoremap h i
nnoremap i k
nnoremap k j
nnoremap j h

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
