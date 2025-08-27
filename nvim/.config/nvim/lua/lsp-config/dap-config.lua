local dap = require("dap")

dap.adapters.python = {
	type = "executable",
	command = "/home/adri/Projects/work-personal/CategorizationDataAnalysis/taxonomy_2d_explorer/env/bin/python",
	args = { "-m", "debugpy.adapter" },
}

dap.configurations.python = {
	{
		justMyCode = false,
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return "/home/adri/Projects/work-personal/CategorizationDataAnalysis/taxonomy_2d_explorer/env/bin/python"
		end,
	},
}

require("dap-python").setup(
	"/home/adri/Projects/work-personal/CategorizationDataAnalysis/taxonomy_2d_explorer/env/bin/python"
)

require("dapui").setup()
