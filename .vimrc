let mapleader = "\<Space>"
set nocompatible
set backspace=2
set number
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set hlsearch
set autoindent
set smartindent
set t_Co=256
set mouse=a
set ignorecase
set smartcase
set incsearch
set laststatus=2
colorscheme desert 
hi LineNr ctermfg=4 

"plug packages
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install --all' }
Plug 'junegunn/fzf.vim'

"Plug 'FelikZ/ctrlp-py-matcher' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'tpope/vim-fugitive' 
"Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'

" On-demand loading 
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Markdown syntax suppoer 
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'

call plug#end()

" Fuzzy Find
nnoremap <Leader>o :Files<cr>
nnoremap <Leader>b :Buffer<cr>
nnoremap <Leader>r :FilesMru<cr>
let g:fzf_files_options = '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" Airline 
let g:airline#extensions#tabline#enabled = 1

