-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Esc remap
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)
map("i", "kk", "<Esc>", opts)
map("v", "<Esc>", "<Esc>", opts)

-- Window movement
map("n", "<C-l>", "<c-w>l", opts)
map("n", "<C-k>", "<c-w>k", opts)
map("n", "<C-j>", "<c-w>j", opts)
map("n", "<C-h>", "<c-w>h", opts)

-- telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
map("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", opts)
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", opts)
vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    -- winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer]" })

-- DAP
map("n", "<leader>du", '<cmd>lua require("dapui").toggle()<cr>', opts)
map("n", "<leader>dx", '<cmd>lua require("dapui").close()<cr>', opts)
map("n", "<leader>db", '<cmd>lua require("dap").toggle_breakpoint()<cr>', opts)
map("n", "<leader>dc", '<cmd>lua require("dap").continue()<cr>', opts)
map("n", "<leader>di", '<cmd>lua require("dap").step_into()<cr>', opts)
map("n", "<leader>do", '<cmd>lua require("dap").step_over()<cr>', opts)

-- Some other remaps
-- centering after scroll
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- centering when searching
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Copy pasting magic
map("x", "<leader>p", '"_dP', opts) -- avoid overwritting copied register
map("n", "<leader>y", '"+y', opts) -- system clipboard
map("v", "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+y', opts)

-- remove weird stuff
map("n", "Q", "<nop>", opts)

-- dealing with word wrap
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- LazyVim fixes
map("v", "v", '<Esc>', opts)

-- Vimwiki
map("n", "<leader>ww", "<cmd>VimwikiIndex<cr>", opts)

-- Undotree
map("n", "<leader>uu", "<cmd>UndotreeToggle<cr>", opts)

-- url-open
vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
