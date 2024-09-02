return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()

		local configs = require("nvim-treesitter.configs") configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"eex",
				"heex",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"yaml",
				"css",
				"html",
			},
						sync_install = false,
						highlight = { enable = true },
						indent = { enable = true },
						auto_install = true,
		})

	end
}
