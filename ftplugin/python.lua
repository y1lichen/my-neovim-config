require'lspconfig'.pyright.setup{
  settings = {
          python = {
            venvPath = ".",
            pythonPath = "/opt/homebrew/Caskroom/miniforge/base/bin/python",
            analysis = {
              extraPaths = {"."}
            }
          }
        }
}


-- iron repl keymapping
vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
