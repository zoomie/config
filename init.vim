syntax on

set number
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set mouse=a
"set clipboard=unnamed
set clipboard=unnamedplus
set bs=2
set ignorecase

call plug#begin('~/.config/nvim/plugged/')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
call plug#end()

colorscheme gruvbox
set background=dark
let g:python3_host_prog = '/Users/andrew/.config/nvim/venv/bin/python3'


let mapleader = " "
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <Leader>rr :YcmCompleter RefactorRename<CR>

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <C-f> :Rg! 

nnoremap <c-s> :w<cr>

let g:ycm_confirm_extra_conf = 0

let g:ale_linters = {'python': ['flake8']}
"let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#tabline#enabled = 1


let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.9} }
let $FZF_DEFAULT_OPTS='--reverse'

autocmd FileType netrw setl bufhidden=delete
