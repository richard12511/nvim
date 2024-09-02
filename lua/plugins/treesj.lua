return {
  'Wansmer/treesj',
  keys = { '<space>m', '<space>j', '<space>s' },
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require('treesj').setup({
			vim.keymap.set('n', '<leader>m', require('treesj').toggle);
			vim.keymap.set('n', '<leader>M', function()
				require('treesj').toggle({ split = { recursive = true } })
			end)
		})
  end,
}
