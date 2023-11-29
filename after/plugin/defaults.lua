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
