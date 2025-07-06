-- Cargar plugins
vim.opt.termguicolors = true


require("config.lazy")

vim.cmd 'syntax on'
-- local changeTheme = require("scripts.changeTheme")
-- changeTheme.readTheme()
require('extra')

vim.o.laststatus = 0




vim.api.nvim_create_augroup('transparent_signs', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
   group = 'transparent_signs',
   callback = function()
      vim.cmd('highlight SignColumn guibg=NONE')
   end,
})

-- Cargar remapeos de teclas
vim.cmd("luafile " .. vim.fn.stdpath("config") .. "/lua/remap.lua")
-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme happy_hacking")
vim.cmd([[
  highlight GitSignsAdd    guibg=NONE
  highlight GitSignsChange guibg=NONE
  highlight GitSignsDelete guibg=NONE
]])
