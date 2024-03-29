vim.o.background = "dark" -- or "light" for light mode

-- setup must be called before loading the colorscheme
-- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "hard", -- can be "hard", "soft" or empty string
--   palette_overrides = {},
--   overrides = {
--     -- DiagnosticVirtualTextError = { fg = "#AA00AA", bg= "#FFFFFF" },
--     -- CmpItemMenu = { fg = "#AA00AA", bg= "#FFFFFF" },
--   },
--   dim_inactive = false,
--   transparent_mode = true,
-- })

vim.cmd("colorscheme gruvbox")
--vim.cmd("colorscheme tokyonight")
