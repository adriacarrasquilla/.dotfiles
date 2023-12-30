-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always vim.opt: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Appearance
vim.opt.termguicolors = true
vim.o.pumheight = 10 -- Max items to show in pop up menu
vim.o.cmdheight = 1 -- Max items to show in command menu
vim.o.conceallevel = 0 -- For markdown like elements
vim.opt.title = true

-- Files and Others
vim.o.fileencoding = "utf-8" -- File Encoding
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.autoformat = false
-- vim.opt.autochdir = true
-- vim.cmd("filetype plugin indent on")
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.hidden = true
-- vim.o.whichwrap = "b,s,<,>,[,],h,l"
vim.opt.iskeyword:append("-,_")
vim.opt.virtualedit = "block"

-- Split Windows
vim.o.splitbelow = true
vim.o.splitright = true

-- Update and backups
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 100
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/"
vim.opt.undofile = true

-- clipboard
vim.o.clipboard = "unnamedplus"

-- Search
vim.opt.hlsearch = false
vim.opt.cursorline = true
vim.opt.errorbells = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Mouse and Scrolling
vim.o.scrolloff = 8
vim.o.sidescrolloff = 5
vim.o.mouse = "a"

-- Wrapping
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.cursorcolumn = false


-- Tabs and indentations
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.opt.relativenumber = true
vim.opt.nu = true


-- hacky stuff to fix color mess in tmux and terminals
vim.cmd([[
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    hi! Normal ctermbg=none ctermfg=none guifg=none guibg=none
    let &fcs='eob: ' 
]])
-- Last command in vim.cmd is to remove the end of file tildes
