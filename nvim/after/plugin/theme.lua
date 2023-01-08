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
