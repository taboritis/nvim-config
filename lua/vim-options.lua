vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " "

vim.g.background = "light"
vim.opt.swapfile = false

-- -- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<C-Up>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>')
-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

