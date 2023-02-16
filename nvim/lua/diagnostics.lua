vim.diagnostic.config({
  virtual_text = false,
})

vim.api.nvim_create_autocmd("CursorHold", {
  group = general,
  pattern = "*",
  command = 'Lspsaga show_line_diagnostics ++unfocus',
})

-- show the full diagnostics in floating window
vim.o.updatetime = 100
