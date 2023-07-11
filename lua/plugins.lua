
vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function()
      -- Packer可以管理自己的更新
      use "wbthomason/packer.nvim"
      --Nvim LSP 客户端的快速入门配置
      use "neovim/nvim-lspconfig"
	  -- git
	  use 'lewis6991/gitsigns.nvim'
	  --
	  use 'folke/flash.nvim'
	  use { "chrisgrieser/nvim-spider" }
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
	  use "jose-elias-alvarez/null-ls.nvim"
	  --
	  use "ray-x/lsp_signature.nvim"
	  -- comment
	  use "terrortylor/nvim-comment"
      -- java
	  use "mfussenegger/nvim-jdtls"
	  -- c/c++
	  use 'p00f/clangd_extensions.nvim'
	  --
	  use 'jose-elias-alvarez/typescript.nvim'
	  -- rust
	  use 'simrat39/rust-tools.nvim'
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
	  -- use { "ellisonleao/gruvbox.nvim" }
	  -- use "EdenEast/nightfox.nvim"
	  -- theme
	  use 'ofirgall/ofirkai.nvim'
	  use 'navarasu/onedark.nvim'
	  use "savq/melange"
	  use "lukas-reineke/indent-blankline.nvim"
	  --
	  use "abecodes/tabout.nvim"
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
	  use({
		  "XXiaoA/ns-textobject.nvim",
		  after = "nvim-surround",
		  config = function()
			  require("ns-textobject").setup({
			  })
		  end
	  })
	  --
	  use {
		"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end}
	  -- statusline
	  use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	  }
	  --
	  use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    requires = { {'nvim-lua/plenary.nvim'} }
	  }
	  use { "kkharji/sqlite.lua" }
	  use {
		'prochri/telescope-all-recent.nvim',
		config = function()
		  require'telescope-all-recent'.setup{
			-- your config goes here
		  }
		end
	  }
	  use {
		"jiaoshijie/undotree",
		requires = {
		  "nvim-lua/plenary.nvim",
		},
	  }
	  -- debug
      use 'mfussenegger/nvim-dap'
	  -- smooth-scroll
	  use 'karb94/neoscroll.nvim'
	  -- flutter
	  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
	  -- move a section of code
	  use 'fedepujol/move.nvim'
	  -- for file explorer
	  use {
		'stevearc/oil.nvim',
		config = function() require('oil').setup() end
	  }
	  -- auto rename tag
	  use {
		'windwp/nvim-ts-autotag',
		config = function() require('nvim-ts-autotag').setup() end
	  }
	  -- auto detect indent
	  use {
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup {} end,
	  }
	  --repl
	  use {'Vigemus/iron.nvim'}
end)
