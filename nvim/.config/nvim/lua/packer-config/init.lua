return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use 'ellisonleao/gruvbox.nvim'

    -- statusline
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP stuff
    use {'neovim/nvim-lspconfig',
        requires = {
            "williamboman/mason-lspconfig.nvim",
            "williamboman/mason.nvim",
            "j-hui/fidget.nvim",
            "folke/neodev.nvim",
        }
    }
    require("mason").setup() -- not sure why config is not enough

    -- use "folke/lua-dev.nvim"
    -- use { 'kkharji/lspsaga.nvim' }  -- nightly
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            local saga = require("lspsaga")

            saga.init_lsp_saga({
                -- your configuration
            })
        end,
    })

    -- Completion
    use {'hrsh7th/nvim-cmp',
        requires = {
        "quangnguyen30192/cmp-nvim-ultisnips",
        config = function()
          -- optional call to setup (see customization section)
          require("cmp_nvim_ultisnips").setup{}
        end,
      },
    }  -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim' -- icons on completion
    use { "SirVer/ultisnips" }
    use { "honza/vim-snippets" }

    -- Telescope
    -- make sure to install ripgrep from BurntSushi/ripgrep
    use {
      "nvim-telescope/telescope.nvim", branch = '0.1.x',
      requires = { "nvim-lua/plenary.nvim" }
    }

    use { "nvim-telescope/telescope-fzf-native.nvim", run = 'make', cond = vim.fn.executable 'make' == 1 }

    -- syntax highlighter
    use {
        'nvim-treesitter/nvim-treesitter',
        -- run = ':TSUpdate'
        run = function()
		    pcall(require('nvim-treesitter.install').update { with_sync = true })
	    end,
    }
    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter'
    }

    -- Auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    -- Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- LaTeX
    use { 'lervag/vimtex' }
    vim.cmd([[
        let g:vimtex_view_method='zathura'
        let g:tex_flavor='latex'
        set conceallevel=2
        let g:vimtex_quickfix_enabled=0
    ]])

    -- Notes
    use { 'vimwiki/vimwiki' }

    -- Lua

    -- TODO coments highliter
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                highlight = {
                    comments_only = false
                }
            }
        end
    }

    -- Undotree
    use { "mbbill/undotree" }

    -- Git
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'tpope/vim-fugitive' } 

    -- Debugger
    use { "mfussenegger/nvim-dap" }
    use { "rcarriga/nvim-dap-ui" }

    --[[ To check
        * Debugger interface: https://github.com/mfussenegger/nvim-dap
        * LSP Saga: https://github.com/glepnir/lspsaga.nvim
        * Vim fugitive: https://github.com/tpope/vim-fugitive
    --]]

end)
