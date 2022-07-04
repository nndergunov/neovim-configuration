local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Disabling arrow keys
map('', '<up>', '<NOP>', default_opts)
map('', '<down>', '<NOP>', default_opts)
map('', '<left>', '<NOP>', default_opts)
map('', '<right>', '<NOP>', default_opts)

-- Creating splits
map('n', '<leader>v', ':vsplit<cr>', default_opts)
map('n', '<leader>h', ':split<cr>', default_opts)

-- Closing splits
map('n', '<leader>x', ':close<cr>', default_opts)

-- F8 to open symbol outline
map('n', '<F8>', ':SymbolsOutline<cr>', default_opts)

-- Telescope configuration
map('n', '<leader>ff', require('telescope.builtin').find_files, default_opts)
map('n', '<leader>fg', require('telescope.builtin').live_grep, default_opts)
map('n', '<leader>fb', require('telescope.builtin').buffers, default_opts)
map('n', '<leader>fh', require('telescope.builtin').help_tags, default_opts)

-- Telescope fileview configuration
map('n', '<C-n>', require('telescope').extensions.file_browser.file_browser, default_opts)

-- LSP stuff remaps
map('n', 'gh', require('lspsaga.finder').lsp_finder, default_opts)
map('n', '<leader>ca', require('lspsaga.codeaction').code_action, default_opts)
map('v', '<leader>ca', function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-U>', true, false, true))
    require('lspsaga.codeaction').range_code_action()
end, default_opts)
map('n', 'gr', require('lspsaga.rename').lsp_rename, default_opts)
