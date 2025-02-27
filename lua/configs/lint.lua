local lint = require "lint"

lint.linters_by_ft = {
  lua = { "luacheck" },
  -- haskell = { "hlint" },
  go = { "golangcilint" },

  javascript = { "eslint" },
  -- python = { "flake8" },
}

lint.linters.luacheck.args = {
  "--globals",
  "love",
  "vim",
  "--formatter",
  "plain",
  "--codes",
  "--ranges",
  "-",
}
