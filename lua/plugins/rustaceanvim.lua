return {
	'mrcjkb/rustaceanvim',
	version = '^7',
	lazy = false,
	ft = { 'rust' },
	init = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					['rust-analyzer'] = {
						check = {
							command = "clippy",
						},
						inlayHints = {
							bindingModeHints = { enable = true },
							chainingHints = { enable = true },
							closureReturnTypeHints = { enable = "always" },
						},
					},
				},
			},
		}
	end,
}
