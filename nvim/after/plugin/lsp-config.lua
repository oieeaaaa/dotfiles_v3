local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup_handlers({
   -- The first entry (without a key) will be the default handler
   -- and will be called for each installed server that doesn't have
   -- a dedicated handler.
   function (server_name) -- default handler (optional)
       lspconfig[server_name].setup {}
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
