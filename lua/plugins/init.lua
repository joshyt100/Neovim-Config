return {
  "Nvchad/nvcommunity",
  { import = "nvcommunity.completion.codeium" },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  -- lazy.nvim

  -- Install all required plugins
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- For python
        "pyright",
        "mypy",
        "pylint",
        "black",
        "ruff",
        -- For Web Development
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettierd",
        "emmet-language-server",
        "eslint-lsp",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  -- lazy.nvim
  -- Install all required language syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "nvchad.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "go",
      }
    end,
  },

  -- Null LS
  -- {
  --   "nvimtools/none-ls.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     return require "configs.null-ls"
  --   end,
  -- },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    lazy = false,
    config = function()
      require("codeium").setup {
        virtual_text = {
          enabled = true,
        },
      }
    end,
  },
  -- lazy.nvim
  -- Auto close tag for jsx, tsx
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
    },
    config = function()
      require("noice").setup {
        lsp = {
          hover = {
            enabled = true, -- this will disable hover warning
          },
          signature = {
            enabled = true, -- this will disable signtature warning.
          },
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          -- bottom_search = true, -- use a classic bottom cmdline for search
          -- command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      }
    end,
  },
}
