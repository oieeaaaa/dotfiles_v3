require('nvim-ts-autotag').setup({
  filetypes = {
    "html",
    "htmldjango",
    "javascript",
    "typescript",
    "go",
  },
})
require'nvim-treesitter.configs'.setup {
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "json" },
  },

  --[[ autotag = {
    enable = true,
    enable_close = true,
    enable_rename = true,
    enable_close_on_slash = true,
    filetypes = {
      "html",
      "htmldjango",
      "javascript",
      "typescript",
      "go",
    },
  } ]]
}
