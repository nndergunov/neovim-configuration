" _____________________________________________________________________________
" SETS
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

set encoding=UTF-8

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber " shows line numbers relative to current line
set nu " show current line number (in default shows 0)

set nohlsearch " does not highlight search results after you're done
               " highlighting

set spell " spellcheck

set hidden " keeps your buffer in memory even if you navigate from it

set noerrorbells " no sound if an error occurs

set nowrap " disables wrap duh

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch " will search as you go on

set scrolloff=8 " you will start scrolling
                " when you reach 8th top or bottom line

set noshowmode " disables default --insert-- on the bottom of file

set completeopt=menuone,noinsert,noselect " shows autocomplete menu

set signcolumn=yes " shows column for stuff
                   " like git changes on the left of line numbers
set colorcolumn=80 " shows ruler on 80 characters

set cmdheight=2 " more space for messages

set updatetime=100 " shorter update time helps to be blazingly fast

" Disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" _____________________________________________________________________________
" PLUGIN INSTALLS
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾


call plug#begin('~/.vim/plugged')

"> Style
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline' " better menu in the bottom of file
Plug 'ryanoasis/vim-devicons' " showing icons based on file extensions
Plug 'mkitt/tabline.vim' " better tabline

"> Multilang stuff
Plug 'ctrlpvim/ctrlp.vim' " ctrl+p support
Plug 'preservim/tagbar' " tagbar showing useful info
Plug 'SirVer/ultisnips' " snippets
Plug 'preservim/nerdtree' " fileview tree
Plug 'tpope/vim-commentary' " use gc to make comments
Plug 'airblade/vim-gitgutter' " show git changes in sign column
Plug 'neoclide/coc.nvim', {'branch': 'release'} " better autocompletion
Plug 'https://github.com/tpope/vim-surround' " for wrapping/unwrapping stuff
Plug 'https://github.com/nikvdp/neomux' " terminal in vim

"> Go stuff
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

colorscheme gruvbox

" F8 to open tagbar (preservim/tagbar)
nmap <F8> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Show .smthng files (preservim/tagbar)
let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTree<CR>

" coc config
source ~/.config/nvim/coc-init.vim
let g:coc_global_extensions = ['coc-pairs']

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

" _____________________________________________________________________________
" AUTOMATIC STUFF
" ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

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

