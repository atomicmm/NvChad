-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvchad",
}

M.options = {
   user = function()
       require("custom.options")
   end,
}

M.plugins = require "custom.plugins"

--M.mappings = {
    --misc = function()
        --require "custom.mappings"
    --end,
--}

return M
