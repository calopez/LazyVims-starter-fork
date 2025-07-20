return {
  -- Gotham theme
  {
    "whatyouhide/vim-gotham",
    lazy = false,
    priority = 1000,
  },

  -- Configurar LazyVim para usar Gotham
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
