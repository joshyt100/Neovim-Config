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
  init_options = {
    includeLanguages = {},
    excludeLanguages = {},
    extensionsPath = {},
    preferences = {},
    showAbbreviationSuggestions = true,
    showExpandedAbbreviation = "always",
    showSuggestionsAsSnippets = false,
    syntaxProfiles = {},
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

-- TERRAFORM (snippet support so provider completions work)
local tf_capabilities = vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), capabilities)
tf_capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.terraformls.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  -- optional: if your buffer shows ft=tf
  -- filetypes = { "terraform", "terraform-vars", "tf" },
}

-- TAILWIND
lspconfig.tailwindcss.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}

-- C / C++
lspconfig.clangd.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}

-- CSS / SCSS / LESS
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    css = { validate = true },
    scss = { validate = true },
    less = { validate = true },
  },
}
