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


" Setup plugins

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'dhruvasagar/vim-table-mode'

call plug#end()

"Set up ultisnips directory
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)