local keymap = vim.keymap

-- Directory Navigation
--keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
--keymap.set("n", "<leader>mf", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Pane Navigation
vim.keymap.set('n', '<C-u>', '<C-w>h', { desc = 'Switch to left split' })
vim.keymap.set('n', '<C-i>', '<C-w>l', { desc = 'Switch to right split' })

-- Window Management
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true})
vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true})
--vim.keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>', { noremap = true, silent = true})

