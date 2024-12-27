-- vim.api.nvim_create_autocmd({"BufNewFile"}, {
--   pattern = {"~/Notes/Worklog/*.md"},
--   command = vim.cmd("silent 0r !~/.local/bin/generate-vimwiki-diary-template '%'"),
-- })

vim.cmd([[
    au BufNewFile /Users/adri/Notes/Diary/*.md :silent 0r !~/.local/bin/generate-vimwiki-diary-template '%'
]])
