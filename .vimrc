syntax on
set cursorline
set autoindent
set number
set wrap
set wildmenu
set autoread
set hidden
set termguicolors
set swapfile
set nobackup
set nowritebackup
set signcolumn=yes
set encoding=utf-8
set mouse=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cc=125
set scrolloff=3
set laststatus=2
set dir=~/tmp
au CursorHold * checktime

" Plugins
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'catppuccin/vim', { 'as': 'catpuccin' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte'
Plug 'Yggdroot/indentLine'
call plug#end()

" CoC
" See: https://github.com/neoclide/coc.nvim
" For completion and fixing. Linting via ALE.
let g:coc_enable_locationlist = 0

" ALE
" See: https://github.com/dense-analysis/ale
let g:ale_disable_lsp = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_enter = 0
let g:ale_fix_on_save = 1

" Indentation
let g:indentLine_char = '|'

" Theme
set background=dark
colorscheme catppuccin_mocha 
let g:lightline = { 'colorscheme': 'catppuccin_mocha' }

" Keybinds
au FocusLost * :wa
let mapleader = ','
nnoremap ; :
nnoremap <leader><leader> <C-W>
nmap <leader>ff :GFiles<CR>
nmap <leader>tt :terminal<CR>
nmap / :BLine<CR>
nmap <leader>gd :ALEGoToDefinition<CR>
inoremap jj <esc>
