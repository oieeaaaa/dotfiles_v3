local c = require('colors.sidebar')
-- Color scheme

-- GRUVBOX
-- vim.cmd('colorscheme gruvbox')

-- Oceanic Next
-- vim.cmd('colorscheme OceanicNext')

--require('night').setup({}) -- or use contrast = false to not apply contrast

-- TOKYO NIGHT
--vim.cmd[[colorscheme tokyonight]]
--vim.cmd[[colorscheme tokyonight-storm]]
--vim.cmd[[colorscheme tokyonight-day]]
--vim.cmd[[colorscheme tokyonight-moon]]

-- ONEDARK
--[[ require('onedark').setup {
    style = 'darker',
    transparent = false,
    term_colors = true,
    toggle_style_key = '<Leader>ts',
    toggle_style_list = {'dark', 'darker'},
} ]]
-- require('onedark').load()

-- Github
--[[ require('github-theme').setup({
  theme_style = 'dark_default',
}) ]]

-- Onedark Pro
require('onedarkpro').setup({
  curosorline = true,
  highlights = {
    NvimTreeNormal = { fg = c.fg },
    NvimTreeRootFolder = { fg = c.orange, fmt = "bold" },
    NvimTreeGitDirty = { fg = c.yellow },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeGitDeleted = { fg = c.red },
    NvimTreeSpecialFile = { fg = c.yellow, fmt = "underline" },
    NvimTreeIndentMarker = { fg = c.fg },
    NvimTreeImageFile = { fg = c.dark_purple },
    NvimTreeSymlink = { fg = c.purple },
    NvimTreeFolderName = { fg = c.blue },
    NvimTreeFolderIcon = { fg = c.yellow },
  },
  options = {
    cursorline = true,
    -- transparency = true
  },
})

vim.cmd[[colorscheme kanagawa]]

-- Color coding
require 'colorizer'.setup {
  user_default_options = {
    tailwind = true
  }
}
