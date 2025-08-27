-- ~/.config/nvim/lua/treesitter-scope.lua

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- Register the scope parser
parser_config.scope = {
	install_info = {
		url = "~/Projects/tree-sitter-scope", -- local path or git url
		files = { "src/parser.c" },
		branch = "main", -- if using git url
		generate_requires_npm = false,
	},
	filetype = "scope",
}

-- Register the filetype
vim.filetype.add({
	extension = {
		script = "scope",
	},
})

-- Configure treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		-- your existing parsers
		"scope", -- our custom parser
	},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true,
	},

	-- Optional: Enable other treesitter modules
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},

	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["as"] = "@statement.outer",
				["is"] = "@statement.inner",
			},
		},
	},
})

-- Optional: Add custom commands for Scope files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "scope",
	callback = function()
		vim.bo.commentstring = "// %s"
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
	end,
})
