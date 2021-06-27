    call plug#begin('$HOME/.local/share/nvim/site/autoload/')

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'

    " Better Syntax support
    "Plug 'sheerun/vim-polyglot'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

    " Auto pairs
    Plug 'jiangmiao/auto-pairs'

    " Gruvbox
    "Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-gruvbox8'

    " Status bar
    "Plug 'vim-airline/vim-airline'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    " markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'plasticboy/vim-markdown'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Commenter
    Plug 'scrooloose/nerdcommenter'

    " Code Folding
    Plug 'tmhedberg/SimpylFold'

    " Floating windows
    Plug 'voldikss/vim-floaterm'

    " Vim wiki for notes
    Plug 'vimwiki/vimwiki'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'folke/lsp-colors.nvim'

    " Snippets
    Plug 'honza/vim-snippets' 
    Plug 'SirVer/ultisnips'

    Plug 'tweekmonster/startuptime.vim'
    
call plug#end()

