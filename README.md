# My Personal Neovim Configuration

This is my personal Neovim configuration, built from scratch with modern Lua plugins and managed by `lazy.nvim`. It is designed to be a fast, lightweight, and powerful development environment.

## Features

### Core & User Interface
*   **Plugin Manager**: Manages all plugins using `lazy.nvim`.
*   **Command & Message UI**: Replaces the default command line and message display using `noice.nvim`.
*   **Startup Screen**: A customizable dashboard on startup, powered by `alpha-nvim`.
*   **Status & Tabs**: Provides a configurable statusline with `lualine.nvim` and a file buffer line with `bufferline.nvim`.
*   **Keymap Hints**: Displays available keybindings in a pop-up window using `which-key.nvim`.
*   **Theme Management**: A theme switcher built with `themery.lua`.

### Development & IDE
*   **LSP & Tooling**: Manages language servers for Neovim's built-in LSP client using `mason.nvim`.
*   **Code Completion**: Provides code autocompletion using `blink.cmp`.
*   **Code Formatting**: Formats code on save using `conform.nvim`.
*   **Syntax Highlighting**: Provides syntax highlighting using `nvim-treesitter`.
*   **File Navigation**:
    *   Fuzzy finding for files and text with `telescope.nvim`.
    *   A file tree explorer provided by `neo-tree.nvim`.
*   **Workflow Tools**:
    *   Jump between files with `harpoon`.
    *   Visualize undo history with `undotree`.

## Requirements

*   **Neovim >= 0.10.0**
*   **Git >= 2.19.0**
*   A C compiler for `nvim-treesitter` (e.g., `gcc`, `clang`, or MSVC).
*   `ripgrep` for fast searching with Telescope.
*   `tree-sitter-cli` for automatically installing new parsers.
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
    ```sh
    :Lazy sync
    ```

