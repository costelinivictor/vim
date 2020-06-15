call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'
Plug 'sbdchd/neoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
nnoremap <leader><Tab> :bnext<CR>
verbose imap <tab>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>


let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox 
set background=dark

syntax on
set hidden
set autoindent
set mouse=a
set inccommand=split
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set nowrap
set number
set relativenumber
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
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

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

