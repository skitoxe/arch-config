-- which-key gör så att det kommer upp en svinbra pop-up med vilka shortcuts man kan välja mellan nör man trycker ner leader-key
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
