local map = function(mode, shortcut, command)
  vim.api.nvim_set_keymap(
    mode,
    shortcut,
    command,
    { noremap = true, silent = true }
  )
end

local nmap = function(shortcut, command)
  map('n', shortcut, command)
end

local vmap = function(shortcut, command)
  map('v', shortcut, command)
end

local xmap = function(shortcut, command)
  map('x', shortcut, command)
end

-- general dev
nmap('<leader>/', ':noh<cr>:call clearmatches()<cr>') -- clear matches
nmap('<leader>w', '<cmd>w<cr>') -- save
nmap('<leader>q', '<cmd>q<cr>') -- quit
xmap('<leader>p', '\"_dP') -- paste and preserve

-- keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')

-- blazingly fast movement
vmap('J', ":m '>+1<cr>gv=gv") -- move highlighted to the bottom
vmap('K', ":m '<-2<cr>gv=gv") -- move highlighted to the top
nmap('<C-d>', '<C-d>zz')
nmap('<C-u>', '<C-u>zz')

-- Easy buffer navigation
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')
nmap('<leader>o', '<C-w>o')
nmap('<leader>~', '<cmd>w | %bd | e# | bd#<cr>') -- clear all buffers except the current one

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- Easy window split; C-w v -> vv, C-w - s -> ss
nmap('vv', '<C-w>v')
nmap('ss', '<C-w>s')

-- PLUGINS

-- COLORSCHEMES
nmap('<leader>1', '<cmd>colorscheme kanagawa<cr>')
nmap('<leader>2', '<cmd>colorscheme onedark<cr>')

-- TELESCOPE
nmap("<leader>ff", "<cmd>Telescope git_files<cr>") -- with respect to .gitignore
nmap("<leader>fa", "<cmd>Telescope find_files<cr>") -- find all
nmap("<leader>fg", "<cmd>Telescope git_status<cr>") -- find all git affected changes
nmap("<leader>fs", "<cmd>Telescope live_grep<cr>") -- find strings
-- nmap("<leader>dd", "<cmd>Telescope lsp_definitions<cr>")
-- nmap("<leader>dr", "<cmd>Telescope lsp_references<cr>")
-- nmap("<leader>di", "<cmd>Telescope lsp_implementations<cr>")

-- LSP Saga goodness
nmap('<leader>kk', '<cmd>Lspsaga hover_doc<cr>') -- hover doc
nmap('<leader>kj', '<cmd>Lspsaga hover_doc ++keep<cr>') -- hover doc pinned
nmap('<leader>ca', '<cmd>Lspsaga code_action<cr>') -- code action
nmap('<leader>rr', '<cmd>Lspsaga rename<cr>') -- within file
nmap('<leader>rg', '<cmd>Lspsaga rename ++project<cr>') -- global
nmap("<leader>dd", "<cmd>Lspsaga goto_definition<cr>") -- find definition
nmap("<leader>df", "<cmd>Lspsaga lsp_finder<cr>") -- find all references
nmap("<leader>dp", "<cmd>Lspsaga peek_definition<cr>") -- peek definition
nmap("<leader>sl", "<cmd>Lspsaga show_line_diagnostics<cr>") -- show line diagnostics
nmap("<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<cr>") -- show cursor diagnostics
nmap("<leader>sp", "<cmd>Lspsaga diagnostic_jump_prev<cr>") -- jump to prev diagnostic
nmap("<leader>sn", "<cmd>Lspsaga diagnostic_jump_next<cr>") -- jump to next diagnostic

-- NVIM TREE
nmap('<leader>e', '<cmd>NvimTreeFindFile<cr>')
nmap('<leader>n', '<cmd>NvimTreeToggle<cr>')

-- GIT (VIM FUGITIVE)
nmap('<leader>gs', '<cmd>G<bar> :only<cr>')
nmap('<leader>gf', '<cmd>diffget //2<cr>')
nmap('<leader>gh', '<cmd>diffget //3<cr>')

-- TODO COMMENTS
nmap('<leader>tc', '<cmd>TodoTelescope<cr>')
