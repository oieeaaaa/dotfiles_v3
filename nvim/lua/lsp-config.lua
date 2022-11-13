vim.cmd [[set shortmess+=c]]
vim.o.completeopt = "menuone,noselect"

-- TODO: On Fresh installs
-- Run :LspInstallInfo
-- Install the required lsps below - e.g., prettier, eslint, tsserver, etc...

require("nvim-lsp-installer").setup {}

-- Servers
local lsp = require "lspconfig"

lsp.pyright.setup{}
lsp.tsserver.setup{}
lsp.eslint.setup{}
lsp.tailwindcss.setup{}
lsp.stylelint_lsp.setup{}
lsp.prismals.setup{}
lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspsaga'.init_lsp_saga {}
