local prettier = require("prettier")
local eslint = require("eslint")
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
  formatting.eslint_d,
  formatting.rustywind
}

null_ls.setup({
  sources = sources,
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format { async = true }")
    end
  end
})

prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.22+)
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
    "vue",
  },
})

eslint.setup({
  bin = 'eslint_d', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = true,
      types = { "directive", "problem", "suggestion", "layout" },
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})
