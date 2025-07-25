return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "zidhuss/neotest-minitest",
    "olimorris/neotest-rspec",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec"),
        require("neotest-minitest"),
      },
    })
  end,
}
