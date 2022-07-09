set nocompatible
:filetype off

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Complete
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'preservim/tagbar' " Tagbar for code navigation'
Plug 'morhetz/gruvbox' " colorscheme
Plug 'tpope/vim-fugitive' " git for vim
" Plug 'jesseduffield/lazygit' " git UI
Plug 'Pocco81/AutoSave.nvim' " autosave
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzyFinder
Plug 'junegunn/fzf.vim' " fuzzyFinder2
Plug 'andweeb/presence.nvim' " Discord Presence
Plug 'jiangmiao/auto-pairs' " Auto Pair
Plug 'turbio/bracey.vim' " Html, Css
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'p00f/cphelper.nvim' " testCases cp

set encoding=UTF-8

call plug#end()

nnoremap <C-z> :NERDTreeToggle<CR>
nmap <C-x> :TagbarToggle<CR>

:colorscheme gruvbox

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:auto_save = 1  " enable AutoSave on Vim startup

let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags' " for tagbar
