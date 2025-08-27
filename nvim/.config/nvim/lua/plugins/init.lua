return {
	-- colorscheme
	-- 'ellisonleao/gruvbox.nvim',

	-- 'adriacarrasquilla/gruvbox.nvim',
	-- '~/Projects/gruvbox-adri.nvim',

	-- Telescope
	-- make sure to install ripgrep from BurntSushi/ripgrep
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },

	-- Auto pairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- Comments
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- show hex colors
	"norcalli/nvim-colorizer.lua",

	-- Undotree
	"mbbill/undotree",

	-- Git
	{ "sindrets/diffview.nvim", dependencies = "nvim-lua/plenary.nvim" },
	"tpope/vim-fugitive",

	-- Debugger
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },

	-- File Tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
}
