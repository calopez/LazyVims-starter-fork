-- ~/.config/nvim/lua/plugins/ruby.lua
return {
  -- Ruby LSP configuration optimized for LazyVim
  -- {
  -- "neovim/nvim-lspconfig",
  -- opts = {
  --   servers = {
  --     rubocop = false,
  --     ruby_lsp = {
  --       settings = {
  --         rubyLsp = {
  --           formatter = "rubocop",
  --           linters = { "rubocop" },
  --           -- Enable experimental features for Ruby 3+ syntax
  --           experimentalFeaturesEnabled = true,
  --           -- Enable all features including code actions for auto-corrections
  --           enabledFeatures = {
  --             "codeActions",
  --             "diagnostics",
  --             "documentHighlights",
  --             "documentSymbols",
  --             "foldingRanges",
  --             "formatting",
  --             "hover",
  --             "inlayHints",
  --             "onTypeFormatting",
  --             "selectionRanges",
  --             "semanticHighlighting",
  --           },
  --           rubyVersionManager = "mise", -- or "rvm", "chruby", "asdf"
  --         },
  --       },
  --     },
  --   },
  -- },
  -- },

  -- Treesitter for better Ruby syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ruby" })
      end
    end,
  },

  -- Mason configuration for Ruby tools
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     opts.ensure_installed = opts.ensure_installed or {}
  --     vim.list_extend(opts.ensure_installed, {
  --       "ruby-lsp",
  --       "rubocop",
  --     })
  --   end,
  -- },

  -- Conform.nvim for formatting
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop" }, -- or { "syntax_tree" }
      },
    },
  },

  -- nvim-lint for linting
  -- {
  --   "mfussenegger/nvim-lint",
  --   optional = true,
  --   opts = {
  --     linters_by_ft = {
  --       ruby = { "rubocop" },
  --     },
  --   },
  -- },
}
