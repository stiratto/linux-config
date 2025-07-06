-- ~/.config/nvim/lsp.lua
-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({async = false})
                end
            })
        end



        local lspconfig = require("lspconfig")
        require("mason").setup()

        lspconfig.ts_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig.astro.setup({
            init_options = {
              typescript = {
                tsdk = "/home/stiratto/.local/share/pnpm/global/5/node_modules/typescript/lib", 
              },
            },
            capabilities = capabilities,
            on_attach = on_attach

        })


    end
}
