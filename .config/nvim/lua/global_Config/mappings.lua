-- Set the leader key
vim.g.mapleader = " "

-- Mapping to set the normal mode
vim.keymap.set('i', ',,', '<Esc>', {noremap = true})

-- Mapping to do not use the arrow keys
vim.keymap.set('n', '<up>', '<nop>', {noremap = true})
vim.keymap.set('n', '<left>', '<nop>', {noremap = true})
vim.keymap.set('n', '<right>', '<nop>', {noremap = true})
vim.keymap.set('n', '<down>', '<nop>', {noremap = true})


-- Mapping to save a file
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', {noremap = true})

-- Mapping to exit nvim
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', {noremap = true})

-- Mapping to search
vim.keymap.set('n', '<leader>n', '<cmd>nohlsearch<cr>', {noremap = true, silent = true})

-- Mapping to move to the next buffer
vim.keymap.set('n', '<leader>k', '<cmd>bnext!<cr>', {noremap = true})

-- Mapping to move to the previous buffer
vim.keymap.set('n', '<leader>j', '<cmd>bprevious!<cr>', {noremap = true})

-- Mapping to delete the current buffer
vim.keymap.set('n', '<leader>d', '<cmd>bdelete<cr>', {noremap = true})

-- Mapping to create a new tab
vim.keymap.set('n', '<Leader>t', '<cmd>tabe<cr>')

-- Mapping to go the end of parenthesis
vim.api.nvim_set_keymap('i', '<C-e>', '<C-o>A', {noremap = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope find_files<cr>', {noremap = true, silent = true})

-- Nvimtree
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':NvimTreeToggle<cr>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<Tab>', '<C-w><C-w>', {noremap = true})

-- Format (Null-ls)
vim.api.nvim_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.format()<cr>", {noremap = true})

-- Tagbar
vim.api.nvim_set_keymap("n", "<BS>", ":TagbarToggle<CR>", {noremap = true})
