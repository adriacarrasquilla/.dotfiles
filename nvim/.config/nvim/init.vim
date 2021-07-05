syntax on

highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

" sets
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set updatetime=50
set cmdheight=1
set encoding=utf-8
set title

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Remaps
imap jj <Esc>
let mapleader=" "
nnoremap <C-l> <c-w>l
nnoremap <C-k> <c-w>k
nnoremap <C-j> <c-w>j
nnoremap <C-h> <c-w>h

" Plugins
source $HOME/.config/nvim/plugins.vim

" Colorscheme
let g:gruvbox_transparent_bg=1
set termguicolors
colorscheme gruvbox8
hi! Normal ctermbg=NONE guibg=NONE

" VimWiki
let g:vimwiki_list = [{'path': '~/Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
