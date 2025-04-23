-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  -- cmp = {lspkind = false},
  -- lsp = {signature = {enabled = true}},
  hl_override = {
    Comment = { fg = "#b0b0b0" },
  },
  -- -- theme_ui = {
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  -- },
}

-- M.ui = {
--   tabufline = {
--     enabled = false,
--   },
-- }

return M
