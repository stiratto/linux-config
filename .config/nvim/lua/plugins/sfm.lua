return {
  'dinhhuy258/sfm.nvim',
  config = function()
    require("sfm").setup({
      view = {
        side = "right"
      }
    })
  end
}
