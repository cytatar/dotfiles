execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on
set number
set showcmd
set ruler
set autoindent
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible
set showmatch
set ignorecase
set hlsearch
set cursorline
set smartcase
set scrolloff=4
set laststatus=2
set clipboard=unnamed
colorscheme solarized

set tags=./tags;

set backspace=indent,eol,start

" pane switching in vim
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

if exists('+colorcolumn')
  set colorcolumn=96
endif

" multi-purpose tab key (auto-complete)
function! InsertTabWrapper()
	 let col = col('.') - 1
	 if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	 else
		return "\<c-p>"
	endif
endfunction

" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-n>

" powerline fonts
let g:airline_powerline_fonts = 1

