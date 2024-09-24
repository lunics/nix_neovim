{ extraConfigLua = ''

vim.api.nvim_create_augroup('view', { clear = true, })
vim.api.nvim_create_autocmd({ 'BufWinLeave', }, {
  group = 'view',
  pattern = '*.*',
  command = 'mkview',
  desc = 'Save cursor position and folds when leaving a buffer',
})
vim.api.nvim_create_autocmd({ 'BufWinEnter', }, {
  group = 'view',
  pattern = '*.*',
  command = 'silent! loadview',
  desc = 'Restore cursor position and folds when entering a buffer',
})

''; }
