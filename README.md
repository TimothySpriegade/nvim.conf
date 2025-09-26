# My Personal Neovim Configuration

This is my personal Neovim configuration, built from scratch with modern Lua plugins and managed by `lazy.nvim`.

## Features

*   **Plugin Manager:** Fully managed by the excellent `lazy.nvim`.
*   **Custom Dashboard:** A personalized startup screen powered by `alpha-nvim`.
*   **Modern UI:** A sleek and modern UI for commands, messages, and popups using `noice.nvim`.
*   **Advanced Highlighting:** Fast and accurate syntax highlighting with `nvim-treesitter`.
*   **Keymap Hints:** An intuitive keymap guide provided by `which-key.nvim`.
*   **Status & Tabs:** A clean statusline from `lualine.nvim` and file tabs with `bufferline.nvim`.

## Requirements

*   **Neovim >= 0.10.0**
*   **Git >= 2.19.0**
*   A C compiler for `nvim-treesitter` (e.g., `gcc`, `clang`, or MSVC).
*   `ripgrep` for fast searching with Telescope.
*   A [Nerd Font](https://www.nerdfonts.com/) for icons to render correctly.

## Installation

1.  Clone the repository into your Neovim config directory:
    ```sh
    git clone https://github.com/TimothySpriegade/nvim.conf ~/.config/nvim
    ```

2.  Start Neovim. `lazy.nvim` will automatically bootstrap itself and install all the plugins.
    ```sh
    nvim
    ```

3.  Once the installation is complete, you can run `:Lazy sync` inside Neovim to ensure everything is up-to-date.