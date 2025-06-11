-- ~/.config/nvim/lsp.lua
-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        -- require('java').setup()

        local on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        async = true,
                        bufnr = bufnr,
                    })
                end
            })
        end

        require('lspconfig').jdtls.setup({
            cmd = { "/home/stiratto/.local/bin/java" }
        })


        -- require('lspconfig').jdtls.setup({})
        require("mason").setup()
        require("mason-lspconfig").setup()

    end
}
