-- lua/utils.lua
local M = {}

---@param n integer buffer number
function M.bufdelete(n)
  n = n or vim.api.nvim_get_current_buf()
  local bufs = vim.fn.getbufinfo({ buflisted = 1 })
  if #bufs == 1 and bufs[1].bufnr == n then
    vim.notify("Can't close last buffer", vim.log.levels.ERROR)
    return
  end
  vim.cmd("bdelete! " .. n)
end

M.lualine = {}

function M.lualine.pretty_path()
  local path = vim.fn.expand("%:p")
  local cwd = vim.fn.getcwd()
  if path:find(cwd, 1, true) == 1 then
    path = path:sub(#cwd + 2)
  end
  return path
end

function M.lualine.root_dir()
  return vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
end

return M