return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()

    require("kanagawa").setup({
      colors = {
        palette = {
          oldWhite = "#C7C19F",  -- slightly less yellow
          fujiWhite = "#CFCAB0", -- slightly dimmer
        },
        theme = {
          wave = {
            ui = {
              float = {
                bg = "#1a1a22",
                bg_border = "#1a1a22",
              },
            },
          },
        },
      }
    })
  end
}
