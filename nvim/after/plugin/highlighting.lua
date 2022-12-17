require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "help",
    "javascript",
    "typescript",
    "c",
    "lua",
    "rust",
    "tsx",
    "css",
    "json"
  },

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },

  autotag = {
    enable = true
  }
}
