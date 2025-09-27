return {
    {"stevearc/conform.nvim",
        config = function()
        require("conform").setup({
            formatter_by_ft = {
                go = { "goimports" } 
            },
            format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
            }
        })
    end},
    {
        "LittleEndianRoot/mason-conform",
        config = function ()
            require('mason-conform').setup({
            ensure_installed = { "goimports" } 
        })
        end
    }
}