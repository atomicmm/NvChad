-- default vim options, globals, autocmds,commands

-- vscode format i.e json files
--vim.g.vscode_snippets_path = "your snippets path"

-- snipmate format 
-- vim.g.snipmate_snippets_path = "your snippets path"

-- lua format 
-- vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

-- vim.tbl_extend("force",{},{})
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
