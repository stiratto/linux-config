
local M = {}

function M.readTheme()
  local path = vim.fs.joinpath(vim.fn.stdpath("config"), "colorscheme.txt")

  local file = io.open(path, "r")
  if file ~= nil then
    local line = file:read()
    vim.cmd(line)
    file:close()
  else
    local newFile = io.open(path, "w")
    if newFile then newFile:close() end
    vim.notify("file doesn't exists")
  end
end

function M.setTheme(mode)
  local path = vim.fs.joinpath(vim.fn.stdpath("config"), "colorscheme.txt")

  local file = io.open(path, "w")
  if file then
    if mode == "dark" then
      vim.cmd("colorscheme fogbell")
      file:write("colorscheme fogbell")
    elseif mode == "light" then
      vim.cmd("colorscheme OceanicNextLight")
      file:write("colorscheme OceanicNextLight")
    else
      print("Wrong mode, either dark | light")
    end
    if file ~= nil then file:close() end
  end
end

vim.api.nvim_create_user_command("SetTheme", function (table)
  if (#table.fargs > 1) then
    print("No more args than 1 please babe")
    return
  end
  local argf = table.fargs[1]
  print(argf)
  M.setTheme(argf)
end, {nargs =  "+"})

return M

