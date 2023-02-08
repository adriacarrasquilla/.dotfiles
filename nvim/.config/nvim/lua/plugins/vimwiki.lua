return {
    "vimwiki/vimwiki",
    config = function()
        vim.cmd("hi VimwikiBold term=bold ctermfg=Cyan guibg=#af3a03 guifg=#fe8019 gui=bold")
        vim.g.vimwiki_list = {{path = '~/Notes/', syntax = 'markdown', ext = '.md'}}
    end
}
