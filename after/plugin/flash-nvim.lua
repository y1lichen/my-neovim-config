vim.keymap.set('n', 's', function()
	require("flash").jump()
end, {remap=true})

vim.keymap.set('x', 's', function()
	require("flash").jump()
end, {remap=true})

vim.keymap.set('o', 's', function()
	require("flash").jump()
end, {remap=true})


-- vim.keymap.set('n', 'S', function()
-- 	require("flash").treesitter()
-- end, {remap=true})
--
-- vim.keymap.set('x', 'S', function()
-- 	require("flash").treesitter()
-- end, {remap=true})
-- vim.keymap.set('o', 'S', function()
-- 	require("flash").treesitter()
-- end, {remap=true})

vim.keymap.set('o', 'r', function()
	require("flash").jump({
	  remote_op = {
		restore = true,
		motion = true,
	  },
	})
end, {remap=true})


vim.keymap.set('o', 'R', function()
	require("flash").treesitter_search()
end, {remap=true})

vim.keymap.set('x', 'R', function()
	require("flash").treesitter_search()
end, {remap=true})


vim.keymap.set('c', '<C-s>', function()
	require("flash").toggle()
end, {remap=true})


require("flash").setup({
	modes = {
		-- options used when flash is activated through
		-- a regular search with `/` or `?`
		search = {
		  -- when `true`, flash will be activated during regular search by default.
		  -- You can always toggle when searching with `require("flash").toggle()`
		  enabled = true,
		  highlight = { backdrop = false },
		  jump = { history = true, register = true, nohlsearch = true },
		  search = {
			-- `forward` will be automatically set to the search direction
			-- `mode` is always set to `search`
			-- `incremental` is set to `true` when `incsearch` is enabled
		  },
		},
		-- options used when flash is activated through
		-- `f`, `F`, `t`, `T`, `;` and `,` motions
		char = {
		  enabled = true,
		  -- dynamic configuration for ftFT motions
		  config = function(opts)
			-- autohide flash when in operator-pending mode
			opts.autohide = vim.fn.mode(true):find("no") and vim.v.operator == "y"

			-- disable jump labels when enabled and when using a count
			opts.jump_labels = opts.jump_labels and vim.v.count == 0

			-- Show jump labels only in operator-pending mode
			-- opts.jump_labels = vim.v.count == 0 and vim.fn.mode(true):find("o")
		  end,
		  -- hide after jump when not using jump labels
		  autohide = false,
		  -- show jump labels
		  jump_labels = true,
		  -- jump_labels = false,
		  -- When using jump labels, don't use these keys
		  -- This allows using those keys directly after the motion
		  label = { exclude = "hjkliardc" },
		  -- by default all keymaps are enabled, but you can disable some of them,
		  -- by removing them from the list.
		  -- If you rather use another key, you can map them
		  -- to something else, e.g., { [";"] = "L", [","] = H }
		  keys = { "f", "F", "t", "T", ";", "," },
		  search = { wrap = false },
		  highlight = { backdrop = true },
		  jump = { register = false },
		},
		-- options used for treesitter selections
		-- `require("flash").treesitter()`
		treesitter = {
		  labels = "abcdefghijklmnopqrstuvwxyz",
		  jump = { pos = "range" },
		  search = { incremental = false },
		  label = { before = true, after = true, style = "inline" },
		  highlight = {
			backdrop = false,
			matches = false,
		  },
		},
		treesitter_search = {
		  jump = { pos = "range" },
		  search = { multi_window = true, wrap = true, incremental = false },
		  remote_op = { restore = true },
		  label = { before = true, after = true, style = "inline" },
		},
		-- options used for remote flash
		remote = {
		  remote_op = { restore = true, motion = true },
		},
	  },
})
