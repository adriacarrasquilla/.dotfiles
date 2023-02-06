return {
    -- colorscheme
    -- 'ellisonleao/gruvbox.nvim',

    'adriacarrasquilla/gruvbox.nvim',
    -- '~/Projects/gruvbox-adri.nvim',

    -- statusline
    'nvim-lualine/lualine.nvim',

    -- LSP stuff
    {'neovim/nvim-lspconfig',
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "williamboman/mason.nvim",
            "j-hui/fidget.nvim",
            "folke/neodev.nvim",
        }
    },

    -- Completion
    {'hrsh7th/nvim-cmp',
        dependencies = { "quangnguyen30192/cmp-nvim-ultisnips", "hrsh7th/cmp-nvim-lsp", "saadparwaiz1/cmp_luasnip" },
        config = function()
          -- optional call to setup (see customization section)
          require("cmp_nvim_ultisnips").setup{}
        end,
    },  -- Autocompletion plugin
    'L3MON4D3/LuaSnip', -- Snippets plugin
    'onsails/lspkind-nvim', -- icons on completion
    "SirVer/ultisnips",
    "honza/vim-snippets",

    -- Telescope
    -- make sure to install ripgrep from BurntSushi/ripgrep
    {
      "nvim-telescope/telescope.nvim", branch = '0.1.x',
      dependencies = { "nvim-lua/plenary.nvim" }
    },

    { "nvim-telescope/telescope-fzf-native.nvim", build = 'make', cond = vim.fn.executable 'make' == 1 },

    -- syntax highlighter
    {
        'nvim-treesitter/nvim-treesitter',
        -- build = ':TSUpdate'
        build = function()
		    pcall(require('nvim-treesitter.install').update { with_sync = true })
	    end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        }
    },

    -- Auto pairs
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    -- Comments
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- LaTeX
    'lervag/vimtex',

    -- Notes
    -- 'vimwiki/vimwiki',

    -- Lua

    -- TODO coments highliter
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                highlight = {
                    comments_only = false
                }
            }
        end
    },

    -- show hex colors
    'norcalli/nvim-colorizer.lua',

    -- Undotree
    "mbbill/undotree",

    -- Git
    { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },
    'tpope/vim-fugitive',

    -- Debugger
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",

    -- File Tree
    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        'nvim-tree/nvim-web-devicons',
      }
    },

    --[[ To check
        * Vim fugitive: https://github.com/tpope/vim-fugitive (config further)
    --]]

}
