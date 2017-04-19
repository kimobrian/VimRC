set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme monokai
set t_Co=256
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set encoding=utf-8
set guifont=Courier\ Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let NERDTreeShowHidden=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_up = 1
let g:syntastic_javascript_checkers = ['eslint']
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Quramy/tsuquyomi'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
set number
set tabstop=4

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
" Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

