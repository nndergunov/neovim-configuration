require('plugconfigs.gruvbox')
require('plugconfigs.lualine')
require('plugconfigs.treesitter')
require('plugconfigs.lsp')
require('plugconfigs.nvimgo')
require('plugconfigs.fidget')
require('plugconfigs.telescope')
require('plugconfigs.autocompletion')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- > NVIM core functionality
    use 'wbthomason/packer.nvim' -- packer self-management
    use 'neovim/nvim-lspconfig' -- configurations for the built-in LSP client
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } --  code highlighting
    use { 'kyazdani42/nvim-tree.lua', config = function() require'nvim-tree'.setup {} end, } -- fileview tree
    use 'hrsh7th/nvim-cmp' -- autocompletion
    use 'hrsh7th/cmp-nvim-lsp' -- autocompletion to lsp binding
    use 'hrsh7th/cmp-path' -- show path suggestions in autocompletion
    use 'hrsh7th/cmp-buffer' -- buffer words whatever they may be
    use 'hrsh7th/cmp-cmdline' -- adds completion to command mode I guess
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

    -- > Style
    use 'sainnhe/gruvbox-material'
    use 'nvim-lualine/lualine.nvim' --  better menu in the bottom of file
    use 'kyazdani42/nvim-web-devicons' --  showing icons based on file extensions
    use 'mkitt/tabline.vim' --  better tabline
    use 'ncm2/float-preview.nvim' --  support floating preview window
    use 'rcarriga/nvim-notify' --  better notifications
    use 'airblade/vim-gitgutter' --  show git changes in sign column
    use 'j-hui/fidget.nvim' -- show nvim-lsp indexing progress

    -- > Nice to have stuff
    use 'preservim/tagbar' --  tagbar showing useful info
    use 'tpope/vim-commentary' --  use gc to make comments
    use 'tpope/vim-fugitive' --  vim integration
    use 'tpope/vim-surround' --  for wrapping/unwrapping stuff
    use {'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
        }
    } -- search stuff

    -- > Go stuff
    use { 'ray-x/go.nvim', run = ':GoInstallBinaries' } --  better go config
    use 'ray-x/guihua.lua' --  for floating windows idk

    -- > Other language stuff
    use 'lifepillar/pgsql.vim' --  PostgreSQL
end)

