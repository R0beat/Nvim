set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showcmd
set sw=2
set relativenumber

set noshowmode
set laststatus=2

let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Busqueda
set hlsearch
set incsearch
set ignorecase
set smartcase

" Plugins
call plug#begin('~/.config/nvim/plugged')
" Sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

"Status Bar

Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Archivos
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'benmills/vimux'
"IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', {'do' : {->fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" Temas
colorscheme gruvbox

" Arbol
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>p :files<CR>
nmap <Leader>ag :Ag<CR>

let g:NERDTreeDirArrowExpandable = '°'
let g:NERDTreeDirArrowCollapsible ='•'


"Slipt Resize
nmap <Leader>> 10<C-w>
nmap <Leader>< 10<C-w>

" TMUX navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" Fzf
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

