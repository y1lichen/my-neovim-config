require("typescript").setup({
    disable_commands = false, -- prevent the plugin from creating Vim commands
    debug = false, -- enable debug logging for commands
    server = { -- pass options to lspconfig's setup
        root_dir = function(fname)
        return vim.fn.getcwd()
    end
    },
})

