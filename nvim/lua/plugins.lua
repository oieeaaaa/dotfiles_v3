return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'tpope/vim-fugitive' -- Git commands
  use 'nvim-lualine/lualine.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'edkolev/tmuxline.vim'

  -- color schemes
  -- use 'gruvbox-community/gruvbox'
  -- use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  -- use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  use "olimorris/onedarkpro.nvim"
  -- use 'xiyaowong/nvim-transparent'
  -- use 'mhartington/oceanic-next'
  use 'NvChad/nvim-colorizer.lua'

  -- general dev
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use { 'numToStr/Comment.nvim' }
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'github/copilot.vim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- autopairs
  use 'tpope/vim-surround' -- surround characters shortcuts
  use 'windwp/nvim-ts-autotag' -- pair jsx and html tags

  -- search
  use {
    'nvim-telescope/telescope.nvim', requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }
  use 'tpope/vim-eunuch' -- wrappers UNIX commands
  use 'tpope/vim-vinegar' -- file browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- for file icon
    }
  } -- file browser
  use "folke/todo-comments.nvim"

  -- javascript
  -- use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
  use { 'posva/vim-vue' } -- Vue highlighting
  use 'othree/javascript-libraries-syntax.vim'
  use 'MunifTanjim/eslint.nvim'
end)
