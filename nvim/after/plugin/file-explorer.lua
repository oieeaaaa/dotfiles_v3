vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup {
  open_on_setup = true,
  sync_root_with_cwd = true,
  view = {
    adaptive_size = true,
    centralize_selection = true,

    -- Play with this for a week to see if it's worth adding
    number = true,
    relativenumber = true,
  },
  diagnostics = {
    enable = true,
  },
  renderer = {
    add_trailing = true,
    full_name = true,
    highlight_git = true,
  }
}
