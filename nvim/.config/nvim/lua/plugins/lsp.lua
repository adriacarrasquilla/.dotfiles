return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"williamboman/mason.nvim",
		{ "stevearc/conform.nvim", opts = {} },
	},
	-- opts = {
	-- 	diagnostics = { virtual_text = { prefix = "icons" } },
	-- },
}
