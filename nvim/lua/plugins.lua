local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- common
  'tpope/vim-fugitive', -- Git commands
  'nvim-lualine/lualine.nvim',
  'lewis6991/gitsigns.nvim',
  'edkolev/tmuxline.vim',

  -- color schemes
  'folke/tokyonight.nvim',
  'rebelot/kanagawa.nvim',
  'NvChad/nvim-colorizer.lua',
  'folke/tokyonight.nvim',

  -- general dev
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}},
  { 'glepnir/lspsaga.nvim', branch = 'main' },
  'numToStr/Comment.nvim',
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',

  -- autocomplete
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'github/copilot.vim',

  -- snippets
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- autopairs
  'tpope/vim-surround', -- surround characters shortcuts
  'windwp/nvim-ts-autotag', -- pair jsx and html tags

  -- search
  'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'tpope/vim-eunuch', -- wrappers UNIX commands
  'tpope/vim-vinegar', -- file browser
  'kyazdani42/nvim-tree.lua',
  'kyazdani42/nvim-web-devicons', -- for file icon

  'folke/todo-comments.nvim',

  -- javascript
  'othree/javascript-libraries-syntax.vim',
  'MunifTanjim/eslint.nvim',
})
