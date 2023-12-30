return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")
		local vscodesnippets = require("luasnip.loaders.from_vscode")

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body) -- For `luasnip` users.
				end,
			},

            window = {
                documentation = {
                    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
                    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                },
                completion = {
                    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
                    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                    side_padding = 0,
                    scrollbar = false,
                }
            },

			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}), -- end of mapping section

			-- Managing Sources for completions
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- For luasnip users.
				{ name = "buffer" },
			}),

			formatting = {
				format = lspkind.cmp_format({ with_text = true, maxwidth = 50 }),
			},

            experimental = {
                native_menu = false,
                ghost_text = false, -- this enables virtual text preview
            },
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
			}, {
				{ name = "buffer" },
			}),
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})

		--  VS Code like snippets
		vscodesnippets.lazy_load()
	end,
}

-- return {
--   "hrsh7th/nvim-cmp",
--   version = false, -- last release is way too old
--   event = "InsertEnter",
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     "hrsh7th/cmp-buffer",
--     "hrsh7th/cmp-path",
--     "saadparwaiz1/cmp_luasnip",
--     "neovim/nvim-lspconfig",
--     "hrsh7th/cmp-cmdline",
--     "L3MON4D3/LuaSnip",
--     "rafamadriz/friendly-snippets",
--     "onsails/lspkind.nvim",
--   },
--   opts = function()
--     vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
--     local cmp = require("cmp")
--     local defaults = require("cmp.config.default")()
--     return {
--       completion = {
--         completeopt = "menu,menuone,noinsert",
--       },
--       snippet = {
--         expand = function(args)
--           require("luasnip").lsp_expand(args.body)
--         end,
--       },
--       mapping = cmp.mapping.preset.insert({
--         ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
--         ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
--         ["<C-Space>"] = cmp.mapping.complete(),
--         ["<C-e>"] = cmp.mapping.abort(),
--         ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--         ["<S-CR>"] = cmp.mapping.confirm({
--           behavior = cmp.ConfirmBehavior.Replace,
--           select = true,
--         }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--       }),
--       sources = cmp.config.sources({
--         { name = "nvim_lsp" },
--         { name = "luasnip" },
--         { name = "buffer" },
--         { name = "path" },
--       }),
--       formatting = {
--         format = function(_, item)
--           local icons = require("lazyvim.config").icons.kinds
--           if icons[item.kind] then
--             item.kind = icons[item.kind] .. item.kind
--           end
--           return item
--         end,
--       },
--       window = {
--           documentation = {
--             border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
--             winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
--           },
--           completion = {
--             border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
--             winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
--             side_padding = 0,
--             scrollbar = false,
--           }
--       },
--       experimental = {
--         native_menu = false,
--         ghost_text = false, -- this enables virtual text preview
--         -- ghost_text = {
--         --   hl_group = "CmpGhostText",
--         -- },
--       },
--       sorting = defaults.sorting,
--     }
--   end
-- }
