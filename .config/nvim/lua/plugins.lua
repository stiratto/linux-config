return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-nvim-lsp-document-symbol" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "LunarVim/bigfile.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "ryanoasis/vim-devicons" },
  { "nvim-treesitter/nvim-treesitter",     run = ":TSUpdate" },
  { "nmac427/guess-indent.nvim",           config = function() require("guess-indent").setup({}) end },
  { "preservim/nerdcommenter" },
  { "williamboman/mason.nvim" },
  { "hrsh7th/cmp-path" },
  { "rcarriga/cmp-dap",                    dependencies = { "mfussenegger/nvim-dap" } },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  -- { "hrsh7th/cmp-vsnip" },
  -- { "hrsh7th/vim-vsnip" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer",                  requires = { "hrsh7th/nvim-cmp" } }
}
