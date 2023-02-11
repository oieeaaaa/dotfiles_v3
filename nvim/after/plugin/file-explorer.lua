vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup {
  sync_root_with_cwd = true,
  view = {
    adaptive_size = true,
    centralize_selection = true,
  },
  diagnostics = {
    enable = true,
  },
  renderer = {
    add_trailing = true,
    full_name = true,
    highlight_git = true,
  },
  filters = {
    dotfiles = false
  }
}

local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
