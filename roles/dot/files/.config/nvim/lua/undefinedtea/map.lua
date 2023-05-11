-- leader
vim.g.mapleader = ' '
-- local
vim.g.maplocalleader = '\\'

-- leader map
vim.keymap.set('n', '<leader><leader>', ':so<CR>')
vim.keymap.set('n', '<leader>o', ':only<CR>')
vim.keymap.set('n', '<leader>p', ':echo expand(\'%\')<CR>')

vim.keymap.set('n', '<leader>w', ':write<CR>')

vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set('n', '<leader>x', '<cmd>silent !chmod +x %<CR>')

-- yea
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 'q', '<nop>')

-- normal map
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux new-window tmux-create-session<CR>')

-- visual map
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- vendor
vim.keymap.set('n', '<leader>pf', vim.cmd.Ex)
