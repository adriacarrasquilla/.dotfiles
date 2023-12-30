-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- vim.api.nvim_create_autocmd({"BufNewFile"}, {
--   pattern = {"~/Notes/Worklog/*.md"},
--   command = vim.cmd("silent 0r !~/.local/bin/generate-vimwiki-diary-template '%'"),
-- })

vim.cmd([[
    au BufNewFile /Users/fortesad/Notes/Worklog/*.md :silent 0r !~/.local/bin/generate-vimwiki-diary-template '%'
]])
