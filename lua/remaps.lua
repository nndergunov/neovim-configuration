local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Disabling arrow keys
map('', '<up>', '<NOP>', {})
map('', '<down>', '<NOP>', {})
map('', '<left>', '<NOP>', {})
map('', '<right>', '<NOP>', {})

-- Creating splits
map('n', '<leader>v', ':vsplit<cr>', {})
map('n', '<leader>h', ':split<cr>', {})

-- Closing splits
map('n', '<leader>x', ':close<cr>', default_opts)

-- F8 to open tagbar (preservim/tagbar)
map('n', '<F8>', ':TagbarToggle<cr>', {})

-- Telescope configuration
map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', {})
map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {})
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', {})
map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', {})

-- Telescope fileview configuration
map('n', '<C-n>', ':Telescope file_browser<cr>', {})
