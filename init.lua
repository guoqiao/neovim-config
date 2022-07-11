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

-- window option
vim.wo.number = true
vim.wo.relativenumber = true

-- https://github.com/nanotee/nvim-lua-guide#defining-mappings
local opts = { noremap = true, silent = false }

vim.g.mapleader = ","
vim.keymap.set('n', '<leader>r', ':source %<CR>', opts)  -- reload current file
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', opts)  -- turn off search highlight

-- miscs
vim.keymap.set('n', ';', ':', opts)
vim.keymap.set('n', '<space>', '$', opts)

-- save in normal mode
vim.keymap.set('n', '<c-s>', ':w<CR>', opts)
-- save in insert mode
vim.keymap.set('i', '<c-s>', '<Esc>:w<CR>', opts)

-- explore file and split
vim.keymap.set('n', 'tt', ':Vexplore<CR>', opts)
vim.keymap.set('n', '\\', ':Vexplore<CR>', opts) -- use `|\` key to explore in a vertical split
vim.keymap.set('n', '-', ':Sexplore<CR>', opts)  -- use `-_` key to explore in a horizontal split
vim.keymap.set('n', '=', ':Texplore<CR>', opts)  -- use `+=` key to explore in a new tab

-- tabs
vim.keymap.set('n', 'tn', ':tabnew<CR>', opts)
vim.keymap.set('n', 'tc', ':tabclose<CR>', opts)
vim.keymap.set('n', 'to', ':tabonly<CR>', opts)
vim.keymap.set('n', 'th', ':tabprevious<CR>', opts)
vim.keymap.set('n', 'tl', ':tabnext<CR>', opts)

vim.keymap.set('n', '<c-j>', '<c-w>j', opts)
vim.keymap.set('n', '<c-h>', '<c-w>h', opts)
vim.keymap.set('n', '<c-k>', '<c-w>k', opts)
vim.keymap.set('n', '<c-l>', '<c-w>l', opts)

require('plugins')
