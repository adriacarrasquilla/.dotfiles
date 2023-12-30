return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
        border= "rounded",
        width = 0.6,
        height = 0.8,
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    }
  }
}
