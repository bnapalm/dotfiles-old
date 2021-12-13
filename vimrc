" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (pathogen or vundle)
execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=cqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Autoindent
set autoindent
set smartindent
" set cindent

" True color
set termguicolors

" gruvbox dark colors
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" let g:zenburn_high_Contrast=0
" let g:zenburn_subdued_LineNr=1
" colors zenburn

" Terraform auto-fmt
let g:terraform_fmt_on_save=1

" tab-complete menu
set wildmenu

" Buffer shortcuts
nnoremap gb         :buffers<CR>:buffer<Space>
nnoremap <PageUp>   :bprevious<CR>
nnoremap <PageDown> :bnext<CR>

" Save your fingers on custom keyboard

map ī k
map s j
map ē h
map ā l
