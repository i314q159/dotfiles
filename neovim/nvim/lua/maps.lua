-- Increment/Decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- New tab
vim.keymap.set('n', 'te', ':tabedit<Return>', { silent = true })