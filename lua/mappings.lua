require "nvchad.mappings"

-- add yours here

-- local map = vim.keymap.set
--
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
--
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--

-- lua/mappings.lua

-- Use vim.keymap.set directly here to avoid overriding NvChad mappings
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
