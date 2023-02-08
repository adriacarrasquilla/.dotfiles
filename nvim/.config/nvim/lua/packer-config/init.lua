local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Lazy needs to have the mapleader set before anything else
vim.g.mapleader = ' '

-- I need to set up this before the plugin. Otherwise vimwiki will ignore it
vim.g.vimwiki_list = {{path = '~/Notes/', syntax = 'markdown', ext = '.md'}}

require("lazy").setup('plugins', {ui={border="rounded"}})

require("mason").setup({ui={border="rounded"}})
vim.cmd([[
    let g:vimtex_view_method='zathura'
    let g:tex_flavor='latex'
    set conceallevel=2
    let g:vimtex_quickfix_enabled=0
]])
