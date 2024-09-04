return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- install different completion source
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		-- {
		-- 	"L3MON4D3/LuaSnip",
		-- 	-- follow latest release.
		-- 	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- 	-- install jsregexp (optional!).
		-- 	build = "make install_jsregexp",
		-- },
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			-- add different completion source
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			-- using default mapping preset
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			snippet = {
				-- you must specify a snippet engine
				expand = function(args)
					-- using neovim v0.10 native snippet feature
					-- you can also use other snippet engines
					vim.snippet.expand(args.body)
				end,
			},
		})

		-- local lspkind = require("lspkind")

		-- load vscode style snippets for things like friendly-snippets
		-- require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
