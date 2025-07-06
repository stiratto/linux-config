vim.g.mapleader = " "

-- remap.lua
-- Telescope
-- vim.keymap.set("n", "<leader>rr", ':RustRun<CR>', {})

vim.keymap.set("n", "gl", ':lua vim.diagnostic.open_float()<CR>', {})
vim.keymap.set("n", "<leader>f", ":FzfLua files<CR>", {})
vim.keymap.set("n", "<leader>r", ":FzfLua oldfiles<CR>", {})
vim.keymap.set("n", "<leader>g", ":FzfLua live_grep<CR>", {})
vim.keymap.set("n", "<leader>cO", ":FzfLua colorschemes<CR>", {})
-- vim.keymap.set("n", "fg", ":lua require('telescope.builtin').live_grep()<CR>", {})
vim.keymap.set("n", "gl", ":lua vim.diagnostic.open_float()<CR>", {})
vim.keymap.set("n", "<S-b>", ":SFMToggle()<CR>", {})
vim.keymap.set("n", "<S-l>", ":BufferNext<CR>", {})
vim.keymap.set("n", "<S-h>", ":BufferPrevious<CR>", {})
vim.keymap.set("n", "<S-w>", ":BufferClose<CR>", {})

