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
require('onedark').setup {
    style = 'darker',
    transparent = false,
    term_colors = true,
    toggle_style_key = '<Leader>ts',
    toggle_style_list = {'dark', 'darker'},
}
require('onedark').load()


-- Airline
vim.g.airline_theme = 'term'

-- TRANSPARENT
require("transparent").setup({
  enable = false, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
  },
  exclude = {}, -- table: groups you don't want to clear
})

require("colorizer").setup {
  user_default_options = {
    -- Available modes for `mode`: foreground, background,  virtualtext
    mode = "virtualtext", -- Set the display mode.
    tailwind = true, -- Enable tailwind colors
    -- parsers can contain values used in |user_default_options|
    sass = { enable = false, parsers = { css }, }, -- Enable sass colors
    virtualtext = "■",
  },
  -- all the sub-options of filetypes apply to buftypes
  buftypes = {},
}
