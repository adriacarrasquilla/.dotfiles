return {
    "goolord/alpha-nvim",
    dependencies = {
        -- "kyazdani42/nvim-web-devicons",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require('alpha').setup(
            require('alpha.themes.startify').config
        )
    end
}
