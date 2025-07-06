

-- vim.diagnostic.config({
--     virtual_text = false,
--     signs = true,
--     underline = false,
--     update_in_insert = false,
--     float = {
--         border = "rounded", -- puedes usar: "single", "double", "rounded", "solid", "shadow"
--     },
-- })


vim.api.nvim_set_hl(0, "NormalFloat", { bg = NONE })
vim.api.nvim_set_hl(0, 'FloatBorder', { link = NONE }) -- line to fix de background color border
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultInactive", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultCurrent", { bg = "NONE", fg = "#ffdd33", bold = true })

vim.api.nvim_set_hl(0, "BufferDefaultTabpages", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultVisibleSign", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultVisible", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultCurrentMod", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultVisibleMod", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultCurrentSign", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultInactiveMod", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferDefaultInactiveIndex", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "NONE", fg = "NONE" })
vim.api.nvim_set_hl(0, "BufferVisibleIndex", { bg = "NONE", fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "Folded", { bg = "NONE" })
vim.api.nvim_set_hl(0, "BufferInactiveModBtn", {bg = "NONE"})

vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })

vim.api.nvim_set_hl(0, "StatusLineNC", {bg = "NONE"})

vim.cmd [[
  highlight SignColumn guibg=NONE
  highlight LineNr guibg=NONE
  highlight GitSignsAdd    guibg=NONE
  highlight GitSignsChange guibg=NONE
  highlight GitSignsDelete guibg=NONE
]]

local signs = { Error = " E", Warn = " W", Info = " I", Hint = " >" }

vim.opt.signcolumn = "no"
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' }) -- line to fix de background color border




vim.cmd("set foldmethod=indent")
vim.cmd("set relativenumber")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.foldmethod = "expr"
vim.opt.linespace = 2
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.fillchars = { eob = " ", fold = "-", stl = "-" }
vim.wo.foldnestmax = 3
vim.wo.foldminlines = 1
vim.wo.foldlevel = 1
vim.opt.mouse = ""
vim.wo.foldtext =
[[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) . ' (' . (v:foldend - v:foldstart + 1) . ' lines)']]
vim.g.loaded_perl_provider = 0
vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.wrap = false 
vim.opt.linebreak = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 3
vim.opt.expandtab = true
vim.opt.modeline = true

vim.opt.breakindent = true
vim.opt.numberwidth = 3
vim.opt.showbreak = "↳ "
vim.opt.textwidth = 70
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = { "longest", "list" }
vim.cmd("filetype plugin indent on")
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.showtabline = 0
vim.opt.ttyfast = true
vim.opt.mouse = ""
vim.opt.timeoutlen = 300
vim.opt.inccommand = "split"
vim.opt.updatetime = 200
vim.opt.virtualedit = "block"
vim.opt.showmode = false
vim.opt.cmdheight = 0
vim.opt.pumheight = 8
vim.opt.pumwidth = 20
vim.opt.pumblend = 15
vim.opt.smartcase = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.smartindent = true
vim.opt.scrolloff=99
vim.opt.sidescrolloff = 6
vim.opt.guicursor = {
  "n-v-c:block",     -- normal, visual, command: bloque
  "i-ci:ver25",      -- insert y command-insert: línea vertical
  "r-cr:ver25",      -- replace y command-replace: línea vertical
}
