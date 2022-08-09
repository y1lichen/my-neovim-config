vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function()
      -- Packer可以管理自己的更新
      use "wbthomason/packer.nvim"
      --Nvim LSP 客户端的快速入门配置
      use "neovim/nvim-lspconfig"
	  -- improve startup time
	  use 'lewis6991/impatient.nvim'
	  --
	  use 'phaazon/hop.nvim'
      --自动提示插件
      use {
        "hrsh7th/nvim-cmp",
        requires = {
          "lxyoucan/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
          "lxyoucan/cmp-buffer", --从buffer中智能提示
          "lxyoucan/cmp-path" --自动提示硬盘上的文件
        }
      }
	  --
	  use "ray-x/lsp_signature.nvim"
	  -- comment
	  use "terrortylor/nvim-comment"
      -- java语言支持
	  use "mfussenegger/nvim-jdtls"
      -- 代码段提示
      use {
        "L3MON4D3/LuaSnip",
        requires = {
          "lxyoucan/cmp_luasnip", -- Snippets source for nvim-cmp
          "lxyoucan/friendly-snippets" --代码段合集
        }
      }
	  -- treesitter
	  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
      --主题安装
      -- use 'navarasu/onedark.nvim'
	  use { "ellisonleao/gruvbox.nvim" }
	  use "lukas-reineke/indent-blankline.nvim"
	  --
	  use({"kylechui/nvim-surround",
    	config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    	end
	})
	  -- auto-detect indent
	  use 'zsugabubus/crazy8.nvim'
	  -- text object
	  use 'wellle/targets.vim'
	  --
	  use {
		"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end}
	  -- statusline
	  use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
end)
