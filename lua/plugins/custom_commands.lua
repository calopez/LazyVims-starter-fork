return {
  {
    "LazyVim/LazyVim",
    opts = {
      keys = {
        -- Keymap to run the current Ruby file
        {
          "<leader>r",
          function()
            vim.cmd("w") -- Save the current file
            vim.cmd("!ruby %") -- Run the Ruby file
          end,
          desc = "Run current Ruby file",
          mode = { "n" }, -- Normal mode
        },
      },
    },
  },
}
