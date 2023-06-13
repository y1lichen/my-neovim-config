require('hop').setup {
	case_insensitive = false,
	keys = 'etovxqpdygfblzhckisuran',
}

vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>", {})
vim.api.nvim_set_keymap('', 'g', "<cmd>HopPattern<CR>", {})
vim.api.nvim_set_keymap('', '<Leader>w', ':HopWord<CR>', {})
-- vim.api.nvim_set_keymap('', '<Leader>l', ':HopLine<CR>', {})
vim.api.nvim_set_keymap('', '<Leader>p', ':HopPattern<CR>', {})

