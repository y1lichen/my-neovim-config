vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"

vim.o.termguicolors = true

vim.opt.wrap = false
require("config.lazy")

# avoid paste when using mid button to scroll when using trackpoint on thinkpad
vim.api.nvim_set_keymap('n', '<MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<2-MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<2-MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<3-MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<3-MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<4-MiddleMouse>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<4-MiddleMouse>', '<Nop>', { noremap = true, silent = true })

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

