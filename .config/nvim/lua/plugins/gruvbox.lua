return { 
   "ellisonleao/gruvbox.nvim", 
   config = function()
      require("gruvbox").setup({
         overrides = {
            Normal     = { bg = "#060915" },
            CursorLine = { bg = "NONE" }, -- visible
            CursorLineNr = { bg = "NONE", fg = "#ffaa33" },
            TelescopeSelection = { bg = "NONE", fg = "#ffaa33"},
            TelescopeSelectionCaret = { fg = "#ffaa33" },
         }
      })
      vim.cmd("colorscheme gruvbox")

   end,

}

