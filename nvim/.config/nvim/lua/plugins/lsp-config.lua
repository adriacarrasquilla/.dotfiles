return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    -- autoformat = false,
    ---@type lspconfig.options
    servers = {
      barium = {},
    },
    setup = {
      -- barium for brazil-config completion
      -- https://w.amazon.com/bin/view/Barium
      -- toolbox install barium
      barium = function()
        local lspconfig = require("lspconfig")
        local configs = require("lspconfig.configs")
        configs.barium = {
          default_config = {
            cmd = { "barium" },
            filetypes = { "brazilconfig" },
            root_dir = function(fname)
              return lspconfig.util.find_git_ancestor(fname)
            end,
            settings = {},
          },
        }
      end,
    },
  },
}
