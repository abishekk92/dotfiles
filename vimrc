
call pathogen#infect()
set nocompatible


filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'rodnaph/vim-color-schemes'

Bundle 'vim-scripts/VimClojure'

Bundle 'tpope/vim-endwise'

Bundle 'tpope/vim-fugitive'

Bundle 'bling/vim-airline'

Bundle 'spolu/dwm.vim'

Bundle 'kien/ctrlp.vim'

Bundle 'scrooloose/nerdtree'

Bundle 'orenhe/pylint.vim'

Bundle 'kchmck/vim-coffee-script'

Bundle 'roman/golden-ratio'

Bundle 'vim-scripts/TwitVim'

Bundle 'mileszs/ack.vim'

Bundle 'mivok/vimtodo'

Bundle 'derekwyatt/vim-scala'

Bundle 'Townk/vim-autoclose'

Bundle 'fatih/vim-go'

Bundle 'SirVer/ultisnips'

Bundle 'Valloric/YouCompleteMe'

Bundle 'honza/vim-snippets' 

if has('gui_running')
    syntax enable
    set background=dark
    colorscheme solarized
else
    colorscheme desert
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax on

set hlsearch

set number

set backspace=2
set foldmethod=indent
set foldnestmax=1

filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
