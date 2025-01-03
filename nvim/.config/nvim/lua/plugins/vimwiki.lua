return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        { path = '~/Notes', syntax = 'markdown', ext = '.md', links_space_char = '-', diary_rel_path = 'Diary', diary_frequency = 'weekly' },
      }
      vim.g.vimwiki_ext2syntax = { ['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown' }
      vim.g.vimwiki_use_mouse = 1
      vim.g.vimwiki_markdown_link_ext = 1
      -- vim.g.vimwiki_folding = 'list'
      -- vim.keymap.set( "n", "<leader>n", "VimwikiToggleListItem<CR>", { desc = "Toggle vimwiki item" })
      -- temporary solution to solve folding issue due vimwiki parser not existing

      vim.treesitter.language.register('markdown', 'vimwiki')
    end,
  },
}
