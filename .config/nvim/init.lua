-- Cargar plugins
vim.opt.termguicolors = true

require("config.lazy")

vim.cmd 'syntax on'
require('extra')
local changeTheme = require("scripts.changeTheme")
changeTheme.readTheme()


vim.api.nvim_create_augroup('transparent_signs', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
   group = 'transparent_signs',
   callback = function()
      vim.cmd('highlight SignColumn guibg=NONE')
   end,
})



-- Cargar remapeos de teclas
vim.cmd("luafile " .. vim.fn.stdpath("config") .. "/lua/remap.lua")
vim.o.background = 'dark'
