return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"gopls",
					"lua_ls",
					"autotools_ls",
					"bashls",
					"docker_language_server"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig"
	}
}
