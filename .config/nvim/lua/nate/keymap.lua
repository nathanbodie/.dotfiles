vim.g.mapleader = ' '
local map = vim.keymap.set

map('n', '<leader>o', ':update<CR>:source<CR>')

-- system clipboard
map({ 'n', 'v' }, '<leader>y', '"+y')
map({ 'n', 'v' }, '<leader>d', '"+d')

map('n', '<leader>lf', vim.lsp.buf.format)
map('n', '<leader>f', '<Cmd>Pick files<CR>')
map('n', '<leader>r', '<Cmd>Pick buffers<CR>')
