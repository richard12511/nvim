return  {
	{
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set('n', '<C-p>', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end
	},
	{ -- If encountering errors, see telescope-fzf-native README for installation instructions
		'nvim-telescope/telescope-fzf-native.nvim',

		-- `build` is used to run some command when the plugin is installed/updated.
		-- This is only run then, not every time Neovim starts up.
		build = 'make',

		-- `cond` is a condition used to determine whether this plugin should be
		-- installed and loaded.
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
		config = function()
			require("telescope").load_extension("fzf")
		end
  },
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {}
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end
	},
	-- Useful for getting pretty icons, but requires a Nerd Font.
  { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
}
