return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright" },
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")

    if require("mason-lspconfig").setup_handlers then
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end
  end
}
