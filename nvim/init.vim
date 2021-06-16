let mapleader=","

syntax enable

set nobackup
set nowritebackup

set background=dark

set nocompatible
filetype plugin on
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

" Remove trailing whitespace
au BufWrite * FixWhitespace
nmap <C-P> :FZF<CR>

" Setup plugins

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dhruvasagar/vim-table-mode'
Plug 'lfilho/cosco.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vim-zettel'
Plug 'preservim/tagbar'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'vim-airline/vim-airline'
Plug 'jpalardy/vim-slime'
Plug 'ap/vim-css-color'
Plug 'bronson/vim-trailing-whitespace'

Plug 'rust-lang/rust.vim'
Plug 'lilyinstarlight/vim-sonic-pi'

call plug#end()

"Comma or SemiColon
nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
imap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)

let g:cosco_filetype_whitelist = ['rust', 'javascript']

"Run format on save
let g:rustfmt_autosave = 1

"Slime target for repl debugging
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

"Easy Motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Move easily with `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-python', 'coc-rls', 'coc-snippets', 'coc-pairs']

"vimwiki config
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"Set up ultisnips directory
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

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

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"Apply autofix on the current issue
nmap <leader>qf <Plug>(coc-fix-current)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Show tagbar
nmap <leader>t :TagbarToggle<cr>

nnoremap <leader>v :vnew<CR>
nnoremap <leader>bs :new<CR>
nnoremap <leader>ew <C-w>=

nnoremap <leader>n :noh<CR>

inoremap jj <esc>
