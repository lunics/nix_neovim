{ extraConfigLua = ''

vim.api.nvim_create_augroup('disableAutoComment', { clear = true, })
vim.api.nvim_create_autocmd({ 'BufWinEnter', 'BufRead', 'BufNewFile', }, {
  group = 'disableAutoComment',
  pattern = '*',
  command = 'setlocal fo-=c fo-=r fo-=o fo+=t',
  desc = 'Disable auto-commenting for all file types',
})

''; }
