vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  -- Fuzzy finder
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- LSP config
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  -- GUI
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'chriskempson/base16-vim'
  use 'sainnhe/everforest'
  use {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup()
    end
  }
  
  -- Vim enhancements
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-entire'
  use 'justinmk/vim-sneak'
  use 'andymass/vim-matchup'
  use 'jiangmiao/auto-pairs'
  use 'vim-scripts/ReplaceWithRegister'

  -- Git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
end)
