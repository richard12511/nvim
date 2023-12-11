local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- indention/tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.scrolloff = 8

-- colors
--opt.termguicolors = true
--opt.background = "dark"
--opt.signcolumn = "yes"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom


local km = vim.keymap
-- Directory Navigation
--keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
--keymap.set("n", "<leader>mf", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- [[ Basic Keymaps ]]
km.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Keymaps for better default experience
-- See `:help km.set()`
-- Remap for dealing with word wrap
-- km.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- km.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
--
-- Diagnostic keymaps
km.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
km.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
km.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
km.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Pane Navigation
km.set('n', '<C-u>', '<C-w>h', { desc = 'Switch to left split' })
km.set('n', '<C-i>', '<C-w>l', { desc = 'Switch to right split' })

-- Window Management
local opts = { noremap = true, silent = true }
km.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true})
km.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true})
--km.set('n', '<leader>sm', ':MaximizerToggle<CR>', { noremap = true, silent = true})

-- Indenting
km.set('v', '<', '<gv')
km.set('v', '>', '>gv')
