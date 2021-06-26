if !exists('#LspColors') | finish | endif

lua << EOF
require("lsp-colors").setup({
  Error = "#ee3ff3",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
EOF

