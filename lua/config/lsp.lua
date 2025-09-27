vim.lsp.enable({
    "gopls",
    "lua_ls"
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end
      vim.keymap.set('n', keys, func, { buffer = ev.buf, noremap = true, silent = true, desc = desc })
    end

    -- Keymap for renaming all occurrences of a variable
    nmap('<leader>lr', vim.lsp.buf.rename, 'Rename')

    -- Other useful LSP keymaps
    nmap('<leader>lc', vim.lsp.buf.code_action, 'Code Action')
    nmap('gd', vim.lsp.buf.definition, 'Go to Definition')
    nmap('gr', require('telescope.builtin').lsp_references, 'Go to References')
    nmap('gI', vim.lsp.buf.implementation, 'Go to Implementation')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')

    -- Keymaps for diagnostics
    nmap('<leader>lp', vim.diagnostic.goto_prev, 'Go to Previous Diagnostic')
    nmap('<leader>ln', vim.diagnostic.goto_next, 'Go to Next Diagnostic')
    nmap('<leader>ll', vim.diagnostic.open_float, 'Show Line Diagnostics')
  end,
})

vim.diagnostic.config({
    virtual_lines = true,
    -- virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})