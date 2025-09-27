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

## Flatpak Vesktop / Discord IPC socket (for cord.nvim)

If you run Vesktop/Discord as a Flatpak, its IPC socket may be relocated under the Flatpak runtime path. That prevents `cord.nvim` from connecting to the usual host socket path. The steps below make the Flatpak-provided socket available at the host runtime location so `cord.nvim` (or other native apps) can connect.

Note: these steps assume your shell is fish (commands below are written for fish where relevant), and that Vesktop's Flatpak app id is `dev.vencord.Vesktop` (adjust if different).

1) Expose the app runtime (finish-args override)
```fish
flatpak override --user --filesystem=xdg-run/app/com.discordapp.Discord:create dev.vencord.Vesktop'
```

2) Inspect your runtime dir and find the socket(s)
```fish
# Show runtime dir and uid
echo $XDG_RUNTIME_DIR
id -u

# Look for Discord/Vesktop IPC sockets (try both XDG_RUNTIME_DIR and /run/user/<uid>)
find "$XDG_RUNTIME_DIR" -name 'discord-ipc-*' -type s -ls 2>/dev/null
find /run/user/(id -u) -name 'discord-ipc-*' -type s -ls 2>/dev/null
```

If the socket exists under a Flatpak path it will look like:
/run/user/<uid>/.flatpak/dev.vencord.Vesktop/xdg-run/discord-ipc-0

3) Run the included host-side symlink script
This repository already includes a helper script at scripts/create-discord-symlink.sh. Make it executable (if needed) and run it:

```
chmod +x ~/.config/nvim/scripts/create-discord-symlink.sh
~/.config/nvim/scripts/create-discord-symlink.sh
```

4) Verify the symlink and socket
```fish
ls -l $XDG_RUNTIME_DIR/discord-ipc-0
file -s $XDG_RUNTIME_DIR/discord-ipc-0
```

5) Restart Neovim and confirm cord.nvim connects