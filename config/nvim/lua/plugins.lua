vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}}
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- LSP config
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'

	use 'chriskempson/base16-vim'
	use 'itchyny/lightline.vim'
	use 'kyazdani42/nvim-web-devicons'
end)
