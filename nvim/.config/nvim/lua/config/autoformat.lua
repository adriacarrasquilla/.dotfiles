local setup = function()
	-- Autoformatting Setup
	local conform = require("conform")
	conform.setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd" },
			sql = { "sql_formatter" },
			csharp = { "csharpier" },
		},
	})

	conform.formatters.injected = {
		options = {
			ignore_errors = false,
			lang_to_formatters = {
				sql = { "sleek" },
			},
		},
	}

	vim.api.nvim_create_autocmd("BufWritePre", {
		group = vim.api.nvim_create_augroup("custom-conform", { clear = true }),
		callback = function(args)
			require("conform").format({
				bufnr = args.buf,
				lsp_fallback = true,
				quiet = true,
			})
		end,
	})

	require("conform").formatters.black = {
		prepend_args = { "--line-length", "120" },
	}
end

setup()

return { setup = setup }
