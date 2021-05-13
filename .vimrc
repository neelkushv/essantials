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
" Check whtiespaces
set list
set listchars=tab:▸-,precedes:←,extends:→,nbsp:·,trail:•
colorscheme desert 
hi LineNr ctermfg=4 

set backupdir=$HOME/.vim/backupfiles//
set directory=$HOME/.vim/swapfiles//

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

Plug 'mbbill/undotree'
Plug 'vim-scripts/vim-auto-save'
Plug 'mfukar/robotframework-vim'
Plug 'tpope/vim-commentary'

Plug 'w0rp/ale'
call plug#end()

" Fuzzy Find
nnoremap <Leader>o :Files<cr>
nnoremap <Leader>b :Buffer<cr>
nnoremap <Leader>r :FilesMru<cr>
let g:fzf_files_options = '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" Airline 
let g:airline#extensions#tabline#enabled = 1
" Enable Persistent Undo

nnoremap <Leader>u :UndotreeToggle<CR>:UndotreeFocus <CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_WindowLayout = 2

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

let g:ale_linters = {
\ 'python': ['pyflakes'],
\ 'yaml': ['yamllint'],
\ 'tcl': ['nagelfar']}
" Set to whatever your nagelfar exe is named
" let g:ale_tcl_nagelfar_executable = nagelfar130/nagelfar.tcl
" Disable chatty Warnings
let g:ale_tcl_nagelfar_options = "-filter '*N *' -filter '*W *'"
" Open the error list when a tcl file is opened
autocmd FileType tcl let b:ale_open_list = 1

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

"Autosave
let g:auto_save_silent = 1
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

let b:ale_linters = {'python': ['pyflakes']}
let g:ale_open_list = 1

autocmd BufNewFile,BufRead *.sls set syntax=yaml
" Fold comments in perl files -- used for idte work
autocmd FileType perl setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'
