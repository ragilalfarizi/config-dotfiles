set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
source $HOME/.config/nvim/plug-config/coc.vim
set hidden

:imap jk <Esc>
:vmap jk <Esc>

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
" Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/neoclide/coc.nvim', {'branch':'release'}
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/raimondi/delimitmate'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/honza/vim-snippets'
Plug 'puremourning/vimspector'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" Make navigating around splits easier
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" autocmd vimenter * ++nested colorscheme gruvbox

" vim-airline theme
let g:airline_theme='ayu_dark'

set termguicolors
let ayucolor="dark"
colorscheme ayu

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" TAGBAR
" nmap <F8> :TagbarToggle<CR>
nmap <leader>t :TagbarToggle<CR>

" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector

" FZF
nnoremap <silent> <C-f> :Files<CR>
" Ripgrep
nnoremap <silent> <Leader>f :Rg<CR>
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
