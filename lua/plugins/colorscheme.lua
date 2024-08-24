--return {
--	"craftzdog/solarized-osaka.nvim",
--	lazy = true,
--	priority = 1000,
--	opts = function()
--		return {
--			transparent = true,
--		}
--	end,
--}

return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin"
	end
}
