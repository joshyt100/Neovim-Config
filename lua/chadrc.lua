-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

--tabufline theme set it

M.base46 = {
  theme_toggle = { "tokyonight", "vscode_light" },
  theme = "solarized_osaka",
  transparency = true,
  hl_override = {
    Comment = { fg = "#b0b0b0" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "arrow",
    overriden_modules = function(modules)
      -- Replace the filename module with full file path
      modules[2] = function()
        return vim.fn.expand "%:p" -- absolute path
      end
    end,
  },
  -- tabufline = {
  --   enabled = false,
  --   transparency = true,
  --   separator_style = "arrow",
  -- },
}

return M
