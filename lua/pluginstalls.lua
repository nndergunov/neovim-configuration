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
    use { 'saadparwaiz1/cmp_luasnip',
        requires = 'L3MON4D3/LuaSnip' } -- snippets source for nvim-cmp          lua

    -- > Style
    -- use 'sainnhe/gruvbox-material' -- colorscheme                                vimscript (it supports macOS Terminal)
    use 'ellisonleao/gruvbox.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' } -- nice nvim theme              lua
    use 'nvim-lualine/lualine.nvim' --  better menu in the bottom of file        lua
    use 'kyazdani42/nvim-web-devicons' --  showing icons                         lua
    use 'crispgm/nvim-tabline' --  better tabline                                lua
    use 'rcarriga/nvim-notify' --  better notifications                          lua
    use 'lewis6991/gitsigns.nvim' --  show git changes in sign column            lua
    use 'j-hui/fidget.nvim' -- show nvim-lsp indexing progress                   lua
    use 'rcarriga/nvim-dap-ui' -- debugger ui                                    lua
    use 'nvim-treesitter/nvim-treesitter-context' -- that xcode apple magic fold lua
    use 'SmiteshP/nvim-navic' -- where in code am I                              lua
    use 'p00f/nvim-ts-rainbow' -- parentheses are raibowie                       lua
    use 'onsails/lspkind.nvim' -- show type icon in cmp window                   lua

    -- > Nice to have stuff
    use 'simrat39/symbols-outline.nvim' -- tagbar showing useful info            lua
    use 'numToStr/Comment.nvim' --  use gc to make comments                      lua
    use { 'nvim-telescope/telescope.nvim', requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    } } -- search stuff                                                          lua
    use 'mfussenegger/nvim-dap' -- debugger                                      lua
    use 'theHamsta/nvim-dap-virtual-text' -- virtual text for debug support      lua
    use { "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end } -- ( -> )   lua
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- shows signature of curr thing   lua
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'
    } -- code folding                                                            lua
    use 'mfussenegger/nvim-lint' -- linting                                      lua
    use({ "glepnir/lspsaga.nvim", branch = "main",
    }) -- lsp things not in command bar                                          lua

    -- > Go stuff
    use { 'ray-x/go.nvim', run = ':GoInstallBinaries' } --  better go config     lua
    use 'ray-x/guihua.lua' --  for floating windows idk                          lua
    use 'leoluz/nvim-dap-go' -- runs debugger for go                             lua

end)
