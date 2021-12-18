Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

function! s:fern_init() abort
  nmap <buffer> ā <Plug>(fern-action-open:select)
  nmap <buffer> s j
endfunction

" Preview on down/up
" function! s:fern_preview_init() abort
"   nmap <buffer><expr>
"         \ <Plug>(fern-my-preview-or-nop)
"         \ fern#smart#leaf(
"         \   "\<Plug>(fern-action-open:edit)\<C-w>p",
"         \   "",
"         \ )
"   nmap <buffer><expr> j
"         \ fern#smart#drawer(
"         \   "j\<Plug>(fern-my-preview-or-nop)",
"         \   "j",
"         \ )
"   nmap <buffer><expr> k
"         \ fern#smart#drawer(
"         \   "k\<Plug>(fern-my-preview-or-nop)",
"         \   "k",
"         \ )
" endfunction

augroup my-fern
  autocmd! *
  autocmd FileType fern call s:fern_init()
augroup END

" You need this otherwise you cannot switch modified buffer
" set hidden
