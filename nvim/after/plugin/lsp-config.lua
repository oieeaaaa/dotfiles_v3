local lspconfig = require("lspconfig")
local mason_lsp = require("mason-lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('lspsaga').setup()
require("mason").setup()

mason_lsp.setup({
  ensure_installed = { "tsserver", "sumneko_lua", "tailwindcss", "eslint" }
})

mason_lsp.setup_handlers({
   -- The first entry (without a key) will be the default handler
   -- and will be called for each installed server that doesn't have
   -- a dedicated handler.
   function (server_name) -- default handler (optional)
    lspconfig[server_name].setup {
      capabilities = capabilities,
    }
   end,
   ["sumneko_lua"] = function ()
       lspconfig.sumneko_lua.setup {
           settings = {
               Lua = {
                   diagnostics = {
                       globals = { "vim", "use" }
                   }
               }
           }
       }
   end,
})
