set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme monokai
set t_Co=256
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
setlocal indentkeys+=0
set splitright
set autoindent
set laststatus=2
set statusline=%!getcwd()
set hlsearch
set backspace=indent,eol,start
set complete-=i
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
let g:workspace_autosave = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set encoding=utf-8

set statusline+=%#warningmsg#
set statusline+=%*
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set runtimepath+=~/.vim/bundle/neobundle.vim/
call vundle#begin()
let NERDTreeShowHidden=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:ycm_path_to_python_interpreter = '/usr/bin/python2.7'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:jsx_ext_required = 0
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'Quramy/tsuquyomi'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'valloric/youcompleteme'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'shougo/vimproc.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-unimpaired'
Plugin 'quramy/vim-js-pretty-template'
Plugin 'thaerkh/vim-workspace'
Plugin 'shougo/unite.vim'
Plugin 'mxw/vim-jsx'
Plugin 'eslint/eslint'
Plugin 'junegunn/fzf'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
" Plugin 'ryanoasis/vim-webdevicons'
Plugin 'itchyny/lightline.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
set number
set tabstop=4
set expandtab
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
map <C-n> :NERDTreeToggle<CR>

set guifont=DroidSansMono\ Nerd\ Font:h11
let g:airline_powerline_fonts = 1

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

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif