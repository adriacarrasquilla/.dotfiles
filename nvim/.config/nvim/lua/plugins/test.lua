local function splitPath(inputPathString)
  -- Function to split a path string into directories
  local result = {}
  local i = 1
  for token in string.gmatch(inputPathString, "([^" .. "/" .. "]+)") do
    result[i] = token
    i = i + 1
  end
  return result
end

local function get_python_test_path()
  -- Get current test file path and split it by directories
  local test_path = vim.fn.getcwd() .. "/" .. vim.fn.expand("%")
  local test_path_list = splitPath(test_path)

  local workspace = test_path_list[3] -- This position always provides the workspace eg. Celon
  local package = test_path_list[5] -- This position always provides the package eg. CelonContinuous...

  local main_path = "/Volumes/workplace/" .. workspace .. "/env/" .. package .. "-1.0/test-runtime/"
  local pytest_symlink = main_path .. "bin/pytest "

  -- Create symlink for the package pytest binary
  os.execute("ln -sf " .. pytest_symlink .. os.getenv("HOME") .. "/.local/bin/pytest")

  return main_path .. "python3.8/bin/python3.8"
end

return {
  "nvim-neotest/neotest",
  dependencies = { "nvim-neotest/neotest-python" },
  opts = function(_, opts)
    return {
      adapters = {
        require("neotest-python")({
          dap = { justMyCode = false },
          -- args = { "--log-level", "DEBUG" },
          runner = "pytest",
          python = get_python_test_path(),
        }),
      },
    }
  end,
}
