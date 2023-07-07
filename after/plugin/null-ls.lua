local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- json
    null_ls.builtins.formatting.json_tool,
    -- python
    null_ls.builtins.formatting.black,
    -- lua
    null_ls.builtins.formatting.stylua,
    -- eslint
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.diagnostics.eslint,
    -- prettier
    null_ls.builtins.formatting.prettier,
    --
    null_ls.builtins.completion.spell,
  },
})
