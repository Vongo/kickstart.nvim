-- Global fold settings
vim.o.foldcolumn = '1' -- Show fold column
vim.o.foldlevelstart = 0
vim.o.foldlevel = 1
vim.o.foldopen = 'all'
vim.o.foldmethod = 'indent'
vim.o.foldenable = true -- Enable folding

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

require('ufo').setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { 'treesitter', 'indent' }
  end,
}
