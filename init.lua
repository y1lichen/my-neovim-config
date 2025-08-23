vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

vim.o.termguicolors = true

require("config.lazy")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
