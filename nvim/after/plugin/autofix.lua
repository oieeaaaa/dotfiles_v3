-- local eslint = require("eslint")
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

local sources = {
  formatting.eslint_d,
  formatting.djlint,
  formatting.prettier_d_slim.with({
     extra_filetypes = {
      "svelte",
      "cshtml",
      "razor"
    },
  }),
}

--[[ diagnostics.mypy.with({
  extra_args = function()
  local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
  return { "--python-executable", virtual .. "/bin/python3.12" }
  end,
}) ]]

null_ls.setup({
  sources = sources,
  on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        -- format on save
        vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
        vim.api.nvim_create_autocmd(event, {
          buffer = bufnr,
          group = group,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr, async = async })
          end,
          desc = "[lsp] format on save",
        })
      end
    end,
})
