-- plugins manager
require("plugins")
-- imrove startup performance
require('impatient')
-- theme
vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])
------按键映射 start----:w
local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
--把空格键设置成<leader>
vim.g.mapleader = " "
vim.keymap.set('', '<Leader>w', ':HopWord<CR>')
vim.keymap.set('', '<Leader>p', ':HopPattern<CR>')
vim.keymap.set('', '<Leader>h', ':nohl<CR>')
------按键映射 end  ------
-- 文件编码格式
vim.opt.fileencoding = "utf-8"
-- show relative number
vim.opt.number=true
vim.wo.relativenumber = true
-- no wrap
vim.wo.wrap = false
--
vim.opt.splitright = true       -- Vertical split to the right
vim.opt.splitbelow = true       -- Horizontal split to the bottom
vim.opt.ignorecase = true       -- Ignore case letters when search
vim.opt.smartcase = true        -- Ignore lowercase for the whole pattern
--
vim.opt.termguicolors = true
--
vim.o.autochdir = true
-- tab=4个空格
vim.opt.tabstop=4
vim.opt.shiftwidth=4
-- using system clipboard and mouse
vim.o.clipboard="unnamedplus"
vim.o.mouse="a"
-- no backup file
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
--
require "lsp_signature".setup()
-- highlight yanked text
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=500})
augroup END
]]
-- floaterm
vim.keymap.set('', '<Leader>ft', ':FloatermNew<CR>')
vim.keymap.set('', '<Leader>pft', ':FloatermPrev<CR>')
vim.keymap.set('', '<Leader>nft', ':FloatermNext<CR>')
vim.keymap.set('', '<Leader>tft', ':FloatermToggle<CR>')
-- buffer navigation
vim.keymap.set('', '<Leader>pb', ':bprev<CR>')
vim.keymap.set('', '<Leader>nb', ':bnext<CR>')
vim.cmd[[
hi Floaterm guibg=white
hi FloatermBorder guifg=black
au BufAdd,BufNewFile * nested tab sball
]]
