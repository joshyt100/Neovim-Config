local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
-- PYTHON
lspconfig.pyright.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}

-- HTML
lspconfig.emmet_ls.setup {
  filetypes = { "css", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
}

-- TYPESCRIPT
lspconfig.ts_ls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.eslint.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.gopls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}
-- lspconfig.flake8.setup({
--   on_init = on_init,
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })
-- TAILWIND
lspconfig.tailwindcss.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.clangd.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    css = {
      validate = true,
    },
    scss = {
      validate = true,
    },
    less = {
      validate = true,
    },
  },
}
