-- delete trailing whitespaces
vim.cmd([[
    fun! TrimWhitespace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endfun
]])

-- automatically doing functions
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
        autocmd BufWritePre *.go :silent! lua require('go.format').goimport()
        autocmd BufWritePre * call TrimWhitespace()
        autocmd BufWritePost * lua require('lint').try_lint()
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])
