HOME = os.getenv("HOME")

-- Enabling synthax based on filetype
vim.cmd([[
filetype indent plugin on
syntax enable
]])

vim.opt.encoding = "UTF-8"
vim.opt.title = true

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.relativenumber = true -- shows line numbers relative to current line
vim.opt.nu = true --- show current line number (in default shows 0)
vim.opt.ru = true -- supposed to show runtime errors
vim.opt.cursorline = true -- show which line you are on

vim.opt.hlsearch = false -- does not highlight search results after you're done

vim.opt.hidden = true -- keeps your buffer in memory even if you navigate from it
vim.opt.autoread = true -- read changes from disc automatically if you are tired from GoLand FiLe WaS ChAnGeD oN dIsC

vim.opt.errorbells = false -- no sound if an error occurs

vim.opt.wrap = false -- disables wrap duh

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = HOME .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true -- will search as you go on

vim.opt.scrolloff = 10 -- you will start scrolling when you reach 8th top or bottom line

vim.opt.showmode = false -- disables default --insert-- on the bottom of file

vim.opt.completeopt = "menuone,noinsert,noselect" -- shows autocomplete menu

vim.opt.signcolumn = "yes" -- shows column for stuff like git changes on the left of line numbers
vim.opt.colorcolumn = "81,121" -- linting recommendation and absolute deadline

vim.opt.cmdheight = 1 -- command line has height of 1

vim.opt.updatetime = 100 -- shorter update time helps to be blazingly fast

vim.opt.splitright = true -- default vertical split goes right
vim.opt.splitbelow = true -- default horizontal split goes below

vim.opt.spell = true -- cool spell checking
