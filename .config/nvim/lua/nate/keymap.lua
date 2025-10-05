vim.g.mapleader = ' '
local map = vim.keymap.set

map('n', '<leader>o', ':update<CR>:source<CR>')

-- system clipboard
map({ 'n', 'v' }, '<leader>y', '"+y')
map({ 'n', 'v' }, '<leader>d', '"+d')

map('n', '<leader>lf', vim.lsp.buf.format)
map('n', '<leader>f', '<Cmd>Pick files<CR>')
map('n', '<leader>r', '<Cmd>Pick buffers<CR>')
map('n', '<leader>g', '<Cmd>Pick grep_live<CR>')
map('n', '<leader>h', '<Cmd>Pick help<CR>')
map('n', '<leader>r', '<Cmd>Oil<CR>')
map('n', '<leader>e', '<Cmd>lua vim.diagnostic.open_float()<CR>')

-- config files
map('n', '<leader>v', '<Cmd>e $MYVIMRC<CR>')
map('n', '<leader>z', '<Cmd>e ~/.zshrc<CR>')
