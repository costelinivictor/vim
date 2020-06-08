call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'ncm2/ncm2'
Plug 'alvan/vim-closetag'
call plug#end()

"keymaps
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ec :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sc :source ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Ag<space>
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h

colorscheme gruvbox 
set background=dark
syntax on
set hidden
set number
set relativenumber
set autoindent
set mouse=a
set inccommand=split
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile

"nerdtree configs
let g:NERDTreeWinPos = "right"

"close nerdtree if it's the only window:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" close-tag configs
let g:closetag_filenames = '*.html,*.ctp,*.js'

" ale configs
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'php': ['prettier'],
\   'html': ['prettier']
\}
