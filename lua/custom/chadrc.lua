-- 覆盖 default_config.lua 中的值

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

M.plugins = "custom.plugins"

--M.mappings = {
    --misc = function()
        --require "custom.mappings"
    --end,
--}

return M
