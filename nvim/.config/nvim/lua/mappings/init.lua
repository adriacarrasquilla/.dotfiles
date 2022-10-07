local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- Esc remap
map('i', 'jj', "<Esc>", opts)
map('i', 'jk', "<Esc>", opts)
map('i', 'kk', "<Esc>", opts)

-- Window movement
map('n', '<C-l>', '<c-w>l', opts)
map('n', '<C-k>', '<c-w>k', opts)
map('n', '<C-j>', '<c-w>j', opts)
map('n', '<C-h>', '<c-w>h', opts)

-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
map('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', opts)
map('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>', opts)


-- DAP
map('n', '<leader>du', '<cmd>lua require("dapui").toggle()<cr>', opts)
map('n', '<leader>dx', '<cmd>lua require("dapui").close()<cr>', opts)
map('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', opts)
map('n', '<leader>dc', '<cmd>lua require("dap").continue()<cr>', opts)
map('n', '<leader>di', '<cmd>lua require("dap").step_into()<cr>', opts)
map('n', '<leader>do', '<cmd>lua require("dap").step_over()<cr>', opts)
