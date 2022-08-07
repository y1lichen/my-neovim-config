--插件管理器
require("plugins")
--主题设置
-- require('onedark').load()
vim.g.neon_style = "light"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.cmd[[colorscheme neon]]
------按键映射 start----:w
local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
--把空格键设置成<leader>
vim.g.mapleader = " "
vim.keymap.set('', '<Leader>w', ':HopWord<CR>')
vim.keymap.set('', '/', ':HopPattern<CR>')
-- keymap('n', 'L', '$', opts)
-- keymap('v', 'L', '$', opts)
-- keymap('n', 'H', '^', opts)
-- keymap('v', 'H', '^', opts)
------按键映射 end  ------
-- 文件编码格式
vim.opt.fileencoding = "utf-8"
-- 显示行号
vim.opt.number=true
-- tab=4个空格
vim.opt.tabstop=4
vim.opt.shiftwidth=4
-- using system clipboard and mouse
vim.o.clipboard="unnamedplus"
vim.o.mouse="a"
--
require "lsp_signature".setup()
-- highlight yanked text
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=500})
augroup END
]]
