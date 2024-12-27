-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>cd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.get_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.get_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
	-- Mappings.
	local bufopts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap

	keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", bufopts)
	keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
	keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", bufopts)
	keymap(bufnr, "n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<CR>", bufopts)
	keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", bufopts)
	keymap(bufnr, "n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", bufopts)
end

-- Add additional capabilities supported by nvim-cmp
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities()

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local lspconfig = require("lspconfig")

-- Python
lspconfig.pyright.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

-- typescript
lspconfig.ts_ls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

-- Latex
lspconfig.texlab.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

-- Lua
lspconfig.lua_ls.setup({
	on_attach = on_attach,
	settings = {
		Lua = {
			telemetry = { enable = false },
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})
