" ______________________________________________________________________________
" SETS
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

set encoding=UTF-8
set title

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber " shows line numbers relative to current line
set nu " show current line number (in default shows 0)
set ru " supposed to show runtime errors
set cursorline " show which line you are on

set nohlsearch " does not highlight search results after you're done
               " highlighting

set hidden " keeps your buffer in memory even if you navigate from it
set autoread " read changes from disc automatically if you are tired from GoLand FiLe WaS ChAnGeD oN dIsC

set noerrorbells " no sound if an error occurs

set nowrap " disables wrap duh

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch " will search as you go on

set scrolloff=8 " you will start scrolling when you reach 8th top or bottom line

set noshowmode " disables default --insert-- on the bottom of file

set completeopt=menuone,noinsert,noselect " shows autocomplete menu

set signcolumn=yes " shows column for stuff like git changes on the left of line numbers
set colorcolumn=81,121 " linting recommendation and absolute deadline

set cmdheight=2 " more space for messages

set updatetime=100 " shorter update time helps to be blazingly fast


" ______________________________________________________________________________
" LANGUAGES
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"> Go

" Enable syntax highlighting per default
 let g:go_highlight_types = 1
 let g:go_highlight_fields = 1
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_build_constraints = 1
 let g:go_highlight_extra_types = 1

" Show the progress when running :GoCoverage
let g:go_echo_command_info = 1

" Show type information
let g:go_auto_type_info = 1

" Highlight variable uses
let g:go_auto_sameids = 0

" Add the failing test name to the output of :GoTest
let g:go_test_show_name = 1

" ______________________________________________________________________________
" REMAPS
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

" Disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

" ______________________________________________________________________________
" PLUGIN INSTALLS
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

call plug#begin('~/.vim/plugged')

"> Style

Plug 'sainnhe/gruvbox-material'
" Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline' " better menu in the bottom of file
Plug 'ryanoasis/vim-devicons' " showing icons based on file extensions
Plug 'mkitt/tabline.vim' " better tabline
Plug 'ncm2/float-preview.nvim' " support floating preview window
Plug 'rcarriga/nvim-notify' " better notifications
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " code highlighting

"> Multilang stuff
Plug 'ctrlpvim/ctrlp.vim' " ctrl+p support
Plug 'preservim/tagbar' " tagbar showing useful info
" Plug 'SirVer/ultisnips' " snippets
Plug 'preservim/nerdtree' " fileview tree
Plug 'tpope/vim-commentary' " use gc to make comments
Plug 'airblade/vim-gitgutter' " show git changes in sign column
Plug 'tpope/vim-fugitive' " vim integration
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'} " better autocompletion
Plug 'https://github.com/tpope/vim-surround' " for wrapping/unwrapping stuff
" Plug 'https://github.com/nikvdp/neomux' " terminal in vim

"> Go stuff
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"> Other language stuff
Plug 'lifepillar/pgsql.vim' " PostgreSQL

call plug#end()

" filetype off
" filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
" filetype plugin indent on
syntax enable

set background=dark
let g:airline_theme = 'gruvbox_material'
colorscheme gruvbox-material
" colorscheme gruvbox

" treesitter configuration
lua <<EOF
require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "gomod", "dockerfile", "toml", "yaml", "make", "vim" },
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

" F8 to open tagbar (preservim/tagbar)
nmap <F8> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Show .smthng files (preservim/tagbar)
let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTree<CR>

let NERDTreeIgnore = [
    \ '\~$',
    \ '\.pyc$',
    \ '^\.DS_Store$',
    \ '^node_modules$',
    \ '^.ropeproject$',
    \ '^__pycache__$'
\]

" coc config
source ~/.config/nvim/coc-init.vim
let g:coc_global_extensions = ['coc-pairs']

" format with goimports instead of gofmt
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_fmt_command="gopls"
let g:go_gopls_gofumpt=1
let g:go_metalinter_command = "golangci-lint"
let g:go_metalinter_enabled = ['gocognit', 'gofmt', 'nonamedreturns', 'tenv',
            \ 'typecheck', 'gochecknoglobals', 'wrapcheck', 'goconst',
            \ 'ireturn', 'makezero', 'nestif', 'deadcode', 'containedctx',
            \ 'cyclop', 'funlen', 'nakedret', 'staticcheck', 'dogsled',
            \ 'exhaustruct', 'exportloopref', 'errname', 'exhaustive', 'godot',
            \ 'lll', 'predeclared', 'wsl', 'asciicheck', 'durationcheck',
            \ 'gomoddirectives', 'varnamelen', 'decorder', 'gocritic', 'gosec',
            \ 'maintidx', 'errcheck', 'unused', 'thelper', 'paralleltest',
            \ 'unconvert', 'gosimple', 'gofumpt', 'nosprintfhostport',
            \ 'nlreturn', 'revive', 'dupl', 'errchkjson', 'goheader',
            \ 'goimports', 'prealloc', 'promlinter', 'testpackage', 'govet',
            \ 'goprintffuncname', 'ifshort', 'whitespace', 'bidichk',
            \ 'errorlint', 'goerr113', 'importas', 'gocyclo', 'grouper',
            \ 'nolintlint', 'ineffassign', 'execinquery', 'forcetypeassert',
            \ 'gochecknoinits', 'gci', 'gomnd', 'misspell', 'nilnil',
            \ 'stylecheck', 'varcheck', 'godox', 'tagliatelle', 'depguard',
            \ 'forbidigo', 'gomodguard']

" ______________________________________________________________________________
" AUTOMATIC STUFF
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

" delete trailing whitespaces
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" automatically doing functions
augroup NDERGUNOV
    autocmd!
    autocmd BufWritePre * call TrimWhitespace()
augroup END

