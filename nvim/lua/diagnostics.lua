vim.diagnostic.config({
  virtual_text = true,
})

vim.o.updatetime = 100
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
