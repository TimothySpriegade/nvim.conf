return {
    {"stevearc/conform.nvim",
        config = function()
        require("conform").setup({
            formatter_by_ft = {
                go = { "goimports" }, 
                haskell = { "ormolu "}
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
            ensure_installed = { "goimports", "ormolu" } 
        })
        end
    }
}