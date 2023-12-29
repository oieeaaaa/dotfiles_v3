require('nvim-ts-autotag').setup()

require'nvim-treesitter.configs'.setup {
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "json" },
  },

  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "go"
    },
  }
}
