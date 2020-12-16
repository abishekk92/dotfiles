let mapleader=","

syntax enable

set background=dark

colorscheme desert

syntax on

set autoread           " Auto reload file on changes
set hlsearch           " highlight all search results
set ignorecase         " do case insensitive search 
set incsearch          " show incremental search results as you type
set number             " display line number
set noswapfile         " disable swap file

set showmatch          " Show matching brackets.
set formatoptions+=o   " Continue comment marker in new lines.

set backspace=
set foldmethod=indent
set foldnestmax=1

filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Easy splits

set splitbelow
set splitright

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
