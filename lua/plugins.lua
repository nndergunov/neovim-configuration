require('plugconfigs.gruvbox')
require('plugconfigs.lualine')
require('plugconfigs.treesitter')
require('plugconfigs.lsp')
require('plugconfigs.nvimgo')
require('plugconfigs.fidget')
require('plugconfigs.telescope')
require('plugconfigs.autocompletion')
require('plugconfigs.tabline')
require('plugconfigs.gitsigns')
require('plugconfigs.comments')
require('plugconfigs.daptext')
require('plugconfigs.telescope-fb')
require('plugconfigs.fold')
require('plugconfigs.lint')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- > NVIM core functionality
    use 'wbthomason/packer.nvim' -- packer self-management                       lua
    use 'neovim/nvim-lspconfig' -- configurations for the built-in LSP client    lua
    use { 'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate' } --  code highlighting                                lua
    use 'nvim-telescope/telescope-file-browser.nvim' -- fileview telescope ext.  lua
    use 'hrsh7th/nvim-cmp' -- autocompletion                                     lua
    use 'hrsh7th/cmp-nvim-lsp' -- autocompletion to lsp binding                  lua
    use 'hrsh7th/cmp-path' -- show path suggestions in autocompletion            lua
    use 'hrsh7th/cmp-buffer' -- buffer words whatever they may be                lua
    use 'hrsh7th/cmp-cmdline' -- adds completion to command mode I guess         lua
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp               lua

    -- > Style
    use 'sainnhe/gruvbox-material' -- colorscheme                                vimscript (it supports macOS Terminal)
    use 'nvim-lualine/lualine.nvim' --  better menu in the bottom of file        lua
    use 'kyazdani42/nvim-web-devicons' --  showing icons                         lua
    use 'crispgm/nvim-tabline' --  better tabline                                lua
    use 'rcarriga/nvim-notify' --  better notifications                          lua
    use 'lewis6991/gitsigns.nvim' --  show git changes in sign column            lua
    use 'j-hui/fidget.nvim' -- show nvim-lsp indexing progress                   lua
    use 'rcarriga/nvim-dap-ui' -- debugger ui                                    lua
    use 'SmiteshP/nvim-navic' -- statusbar on top                                lua

    -- > Nice to have stuff
    use 'preservim/tagbar' --  tagbar showing useful info                        vimscript
    use 'numToStr/Comment.nvim' --  use gc to make comments                      lua
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    }} -- search stuff                                                           lua
    use 'mfussenegger/nvim-dap' -- debugger                                      lua
    use 'theHamsta/nvim-dap-virtual-text' -- virtual text for debug support      lua
    use {"windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end} -- ( makes ) lua
    use {"hrsh7th/cmp-nvim-lsp-signature-help"} -- shows signature of current thing lua
    use {
        'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'
    } -- code folding                                                            lua
    use 'mfussenegger/nvim-lint' -- linting                                      lua

    -- > Go stuff
    use { 'ray-x/go.nvim', run = ':GoInstallBinaries' } --  better go config     lua
    use 'ray-x/guihua.lua' --  for floating windows idk                          lua

    -- > Other language stuff
    use 'lifepillar/pgsql.vim' --  PostgreSQL                                    vimscript

end)

