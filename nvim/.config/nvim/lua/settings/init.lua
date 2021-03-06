-- sets
local set = vim.opt

set.relativenumber = true
set.nu = true

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

set.hlsearch = false
set.errorbells = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.fileencoding = 'utf-8'

set.hidden = true

set.updatetime = 50
set.cmdheight = 1
set.title = true

vim.cmd([[
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    hi! Normal ctermbg=none ctermfg=none guifg=none guibg=none
]])
set.termguicolors = true
