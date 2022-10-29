-- Color scheme

-- GRUVBOX
vim.cmd('colorscheme gruvbox')

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
}
require('onedark').load() ]]


-- Airline
vim.g.airline_theme = 'term'

-- TRANSPARENT
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
  },
  exclude = {}, -- table: groups you don't want to clear
})
