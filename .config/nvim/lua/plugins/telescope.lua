return {
   "nvim-telescope/telescope.nvim",
   config = function()
      local telescope = require("telescope")
      telescope.setup({
         pickers = {
            colorscheme = {
               enable_preview = true
            },
         },
      })
   end,
   dependencies = {
      "nvim-lua/plenary.nvim"

   }
}
