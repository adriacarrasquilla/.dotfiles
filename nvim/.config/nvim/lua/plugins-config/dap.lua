local dap = require('dap')

dap.adapters.python = {
    type = 'executable';
    command = '/usr/bin/python3';
    args = { '-m', 'debugpy.adapter' };
}
dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return '/usr/bin/python3'
    end;
  },
}

vim.fn.sign_define("DapBreakpoint", {text="", texthl="Conditional"})
vim.fn.sign_define("DapBreakpointRejected", {text="", texthl="Conditional"})
vim.fn.sign_define("DapStopped",
                   {text="", texthl="DiagnosticSignWarn",
                    linehl = "Visual", numhl = "DiagnosticSignWarn"})


-- UI SETUP
local ui = {
  expand_lines = true,
  icons = { expanded = "▾", collapsed = "▸", current_frame = "▸", circular = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.33 },
        { id = "breakpoints", size = 0.17 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 0.25 },
      },
      size = 0.33,
      position = "right",
    },
    {
      elements = {
        { id = "repl", size = 0.45 },
        { id = "console", size = 0.55 },
      },
      size = 0.27,
      position = "bottom",
    },
  },
  floating = {
    max_height = 0.9,
    max_width = 0.5, -- Floats will be treated as percentage of your screen.
    border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
}

require("dapui").setup(ui)
