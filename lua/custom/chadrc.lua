---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,

  hl_override = {
    TabufLine = {
      fg = "#DE3163", -- Hot pink (inactive tabs)
      bg = "#1e1e2e",
    },
    TabufLineSel = {
      fg = "#ffffff", -- White (active tab)
      bg = "#44475a",
      bold = true,
    },
    TabufLineModified = {
      fg = "#f1fa8c", -- Yellow if modified
    },
  },
  tabufline = {
    enabled = false,
  },
  statusline = {
    separator_style = "arrow",
    -- theme = "minimal",
  },
}
