-- Setup
vim.g.coq_settings = {
  auto_start = true,
  keymap = {
    jump_to_mark = ''
  },
  display = {
    icons = {
      mode = 'short',
      mappings = {
        Variable = '✨',
        Keyword = '🔑'
      }
    }
  }
}

local lsp = require "lspconfig"
local coq = require"coq"

lsp.tsserver.setup(coq.lsp_ensure_capabilities({}))
