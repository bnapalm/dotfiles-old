"
"=============================
"#####  neovim config  #######
"=============================

"-----------------------------
"  General settings
"-----------------------------

set nowrap
set formatoptions=cqrn1
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set autoindent
set smartindent
set splitbelow
set splitright
set hidden
set number relativenumber
set list
set listchars=tab:<=>,trail:·,extends:⤏,precedes:⤎
set scrolloff=8
set clipboard=unnamedplus

"-----------------------
"  Plugins
"-----------------------

call plug#begin()
source $XDG_CONFIG_HOME/nvim/plugins/fugitive.vim
source $XDG_CONFIG_HOME/nvim/plugins/airline.vim
source $XDG_CONFIG_HOME/nvim/plugins/commentary.vim
source $XDG_CONFIG_HOME/nvim/plugins/surround.vim
source $XDG_CONFIG_HOME/nvim/plugins/gruvbox.vim
call plug#end()

"-----------------------
"  Colors
"-----------------------

set termguicolors
colorscheme gruvbox
set background=dark

"-----------------------------
"  Keybindingss
"-----------------------------

let mapleader=" "

map <leader>ve :edit $XDG_CONFIG_HOME/nvim/init.vim<CR>
map <leader>vr :source $XDG_CONFIG_HOME/nvim/init.vim<CR>
map <leader>h  :noh<CR>

" Reselect after indent
vnoremap < <gv
vnoremap > >gv

" Faster buffer switching
nnoremap gb         :buffers<CR>:buffer<Space>
nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>

" Save my fingers
map ī k
map s j
map ē h
map ā l

map gf :edit <cfile><CR>

"-----------------------------
"  Custom commands
"-----------------------------

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
