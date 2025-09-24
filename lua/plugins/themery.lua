return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        { name = "nightfox", colorscheme = "nightfox" },
        { name = "tokyonight-day", colorscheme = "tokyonight-day" },
        { name = "tokyonight-night", colorscheme = "tokyonight-night" },
        { name = "tokyonight-storm", colorscheme = "tokyonight-storm" },
        { name = "tokyonight-moon", colorscheme = "tokyonight-moon" },
        { name = "github_dark", colorscheme = "github_dark" },
        { name = "github_dark_default", colorscheme = "github_dark_default" },
        { name = "github_dark_dimmed", colorscheme = "github_dark_dimmed" },
        { name = "github_dark_high_contrast", colorscheme = "github_dark_high_contrast" },
        { name = "github_dark_colorblind", colorscheme = "github_dark_colorblind" },
        { name = "github_dark_tritanopia", colorscheme = "github_dark_tritanopia" },
        { name = "github_light", colorscheme = "github_light" },
        { name = "github_light_default", colorscheme = "github_light_default" },
        { name = "github_light_high_contrast", colorscheme = "github_light_high_contrast" },
        { name = "github_light_colorblind", colorscheme = "github_light_colorblind" },
        { name = "github_light_tritanopia", colorscheme = "github_light_tritanopia" },
        { name = "vague", colorscheme = "vague" },
        { name = "vscode", colorscheme = "vscode" },
      },
    })
  end,
  vim.keymap.set("n", "<leader>T", "<cmd>Themery<CR>", {desc = "Toggle Themerey"})
}
