"set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'zchee/deoplete-jedi'
call vundle#end()               " required

filetype plugin indent on
syntax on 
set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap

""preference 
let mapleader = "\<Space>"

"NERDTree
"" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" deoplete
let g:deoplete#enable_at_startup = 1
"" use tab to forward cycle
 inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
"" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
