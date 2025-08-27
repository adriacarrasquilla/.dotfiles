-- vim.api.nvim_create_autocmd({"BufNewFile"}, {
--   pattern = {"~/Notes/Worklog/*.md"},
--   command = vim.cmd("silent 0r !~/.local/bin/generate-vimwiki-diary-template '%'"),
-- })

vim.cmd([[
    au BufNewFile /mnt/c/Users/adric/OneDrive\ -\ Microsoft/Notes/Worklog/*.md :silent 0r !~/.local/bin/vimwiki-diary-template '%'
]])

vim.cmd([[
    au BufNewFile /home/adri/PersonalNotes/Diary/*.md :silent 0r !~/.local/bin/vimwiki-personal-diary-template '%'
]])
