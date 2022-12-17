vim.diagnostic.config({
  virtual_text = false,
})

vim.o.updatetime = 100
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
