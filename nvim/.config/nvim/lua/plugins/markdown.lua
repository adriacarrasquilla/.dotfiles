return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.cmd("let g:mkdp_auto_start = 0")
        vim.cmd("let g:mkdp_refresh_slow = 0")
        -- MacOs
        -- vim.cmd([[
        --     function OpenMarkdownPreview (url)
        --         execute "silent ! open -a Google\ Chrome -n --args --new-window " . a:url
        --     endfunction
        --     let g:mkdp_browserfunc = 'OpenMarkdownPreview'
        -- ]])
    end,
    ft = { "markdown" },
}
