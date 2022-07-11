-- TODO:
-- plugin, like nerdtree
-- apply options for different file type ?
-- vim.o: option
-- vim.go: global option
-- vim.bo: buffer option
-- vim.wo: window option

vim.o.smarttab = false

-- buffer option
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', '<c-s>', ':w<cr>', {})
-- https://github.com/nanotee/nvim-lua-guide#defining-mappings
local opts = { noremap = true }
vim.keymap.set('n', '<c-j>', '<c-w>j', opts)
vim.keymap.set('n', '<c-h>', '<c-w>h', opts)
vim.keymap.set('n', '<c-k>', '<c-w>k', opts)
vim.keymap.set('n', '<c-l>', '<c-w>l', opts)

require('plugins')
