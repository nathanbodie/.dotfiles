vim.pack.add({
  { src = "https://github.com/vague2k/vague.nvim" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/echasnovski/mini.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

require "mason".setup()
require "mini.pick".setup()
require "mini.pairs".setup()
require "oil".setup()

vim.cmd("colorscheme vague")
