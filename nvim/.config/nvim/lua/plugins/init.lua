return {
    -- colorscheme
    -- 'ellisonleao/gruvbox.nvim',

    -- 'adriacarrasquilla/gruvbox.nvim',
    -- '~/Projects/gruvbox-adri.nvim',

    -- Telescope
    -- make sure to install ripgrep from BurntSushi/ripgrep
    {
      "nvim-telescope/telescope.nvim", branch = '0.1.x',
      dependencies = { "nvim-lua/plenary.nvim" }
    },

    { "nvim-telescope/telescope-fzf-native.nvim", build = 'make', cond = vim.fn.executable 'make' == 1 },

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
}
