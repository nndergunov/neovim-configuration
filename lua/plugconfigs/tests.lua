require("neotest").setup({
    adapters = {
        require('neotest-go'),
        -- require("neotest-go")({
        -- experimental = {
        --     test_table = true,
        -- },
        -- args = { "-count=1", "-timeout=60s" }
        -- })
    }
})
