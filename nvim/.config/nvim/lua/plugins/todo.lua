return {
	"folke/todo-comments.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		require("todo-comments").setup({
			highlight = {
				comments_only = false,
			},
			colors = {
				question = { "#945e80" },
			},
			keywords = {
				DONE = { icon = "", color = "hint" },
				QQ = { icon = "", color = "question" },
			},
		})
	end,
}
