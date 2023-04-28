return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Fuzzy finder
  use 'ibhagwan/fzf-lua'

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
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'RRethy/nvim-base16'
  use  {'akinsho/bufferline.nvim', tag = "*"}

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

