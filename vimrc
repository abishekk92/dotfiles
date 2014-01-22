
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

Bundle 'jnwhiteh/vim-golang'

if has('gui_running')
    syntax enable
    set background=dark
    colorscheme solarized
else
    colorschem desert
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

syntax on

set hlsearch

set number


filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
