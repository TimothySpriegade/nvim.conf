return {
  "goolord/alpha-nvim",
  lazy = false,
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "▄▄▄       ██▀███   ██▒   █▓ ██▓ ███▄    █ ▓█████     ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓",
      "▒████▄    ▓██ ▒ ██▒▓██░   █▒▓██▒ ██ ▀█   █ ▓█   ▀     ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
      "▒██  ▀█▄  ▓██ ░▄█ ▒ ▓██  █▒░▒██▒▓██  ▀█ ██▒▒███      ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░",
      "░██▄▄▄▄██ ▒██▀▀█▄    ▒██ █░░░██░▓██▒  ▐▌██▒▒▓█  ▄    ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██ ",
      " ▓█   ▓██▒░██▓ ▒██▒   ▒▀█░  ░██░▒██░   ▓██░░▒████▒   ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒",
      " ▒▒   ▓▒█░░ ▒▓ ░▒▓░   ░ ▐░  ░▓  ░ ▒░   ▒ ▒ ░░ ▒░ ░   ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░",
      "  ▒   ▒▒ ░  ░▒ ░ ▒░   ░ ░░   ▒ ░░ ░░   ░ ▒░ ░ ░  ░   ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░",
      "  ░   ▒     ░░   ░      ░░   ▒ ░   ░   ░ ░    ░         ░   ░ ░     ░░   ▒ ░░      ░   ",
      "      ░  ░   ░           ░   ░           ░    ░  ░            ░      ░   ░         ░   ",
      "                        ░                                           ░                  ",
    }
    dashboard.section.header.opts = {
      hl = "Type",
      position = "center",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", ":enew<CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("g", "  Find text", ":Telescope live_grep<CR>"),
      dashboard.button("c", "  Config", ":e " .. vim.fn.stdpath("config") .. "<CR>"),
      dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }
    dashboard.section.buttons.opts = {
      position = "center",
    }

    dashboard.opts.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
    }

    alpha.setup(dashboard.opts)
  end,
}