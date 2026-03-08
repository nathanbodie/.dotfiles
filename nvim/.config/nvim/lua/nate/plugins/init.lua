return {
	"vague2k/vague.nvim",
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					exclude = { "luau_lsp" },
				},
			})
		end,
	},
	{
		"nvim-mini/mini.pick",
		config = function()
			require("mini.pick").setup()
		end,
	},
	{
		"nvim-mini/mini.pairs",
		config = function()
			require("mini.pairs").setup()
		end,
	},
	"stevearc/oil.nvim",
	"neovim/nvim-lspconfig",
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"Saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.7.0",
		opts = {
			keymap = { preset = "default" },
			appearance = {
				nerd_font_variant = "mono",
			},
			completion = { documentation = { auto_show = false } },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },
}
