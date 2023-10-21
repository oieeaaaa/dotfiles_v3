local lspconfig = require("lspconfig")
local mason_lsp = require("mason-lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('lspsaga').setup({})

require("mason").setup({})

mason_lsp.setup({
  ensure_installed = { "tsserver", "tailwindcss", "eslint" }
})

mason_lsp.setup_handlers({
   -- The first entry (without a key) will be the default handler
   -- and will be called for each installed server that doesn't have
   -- a dedicated handler.
   function (server_name) -- default handler (optional)
    lspconfig[server_name].setup {
      capabilities = capabilities,
    }

    if server_name == "tailwindcss" then
      lspconfig[server_name].setup {
        capabilities = capabilities,
        filetypes = {
          "html",
          "css",
          "scss",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "svelte",
          "vue",
          "markdown",
          "mdx",
        },
        settings = {
          tailwindCSS = {
            lint = {
              cssConflict = "warning",
              invalidApply = "error",
              invalidConfigPath = "error",
              invalidScreen = "error",
              invalidTailwindDirective = "error",
              invalidVariant = "error",
              recommendedVariantOrder = "warning",
            },
          },
        },
      }
    end
   end,
})
