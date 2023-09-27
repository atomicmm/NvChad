local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  lint.shellcheck,
  lint.cspell,
}

null_ls.setup({
  debug = false,
  sources = sources,
})

return {}
