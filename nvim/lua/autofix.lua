local util = require("lspconfig.util")
local prettier = require("prettier")

local eslint_lsp_client = util.get_active_client_by_name(0, 'eslint')

-- Only if eslint is intalled
if eslint_lsp_client ~= nil then
  vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]])
end

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

vim.cmd([[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js Prettier]])
