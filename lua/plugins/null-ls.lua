local null_ls = require("null-ls")

local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.beautysh,
        null_ls.builtins.formatting.eslint,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.code_actions.refactoring,
    },
    on_attach = function(client, bufnr)
        vim.keymap.set("n", "<leader>a", function()
            print("Refactoring")
            vim.lsp.buf.code_action({ bufnr = vim.api.nvim_get_current_buf(), timeout_ms = 5000, async = true })
        end, { buffer = bufnr, desc = "[lsp] format" })

        if client.supports_method("textDocument/formatting") then
            vim.keymap.set("n", "<leader>fr", function()
                print("Formatting")
                vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf(), timeout_ms = 5000, async = true })
            end, { buffer = bufnr, desc = "[lsp] format" })

            -- format on save
            -- vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
            -- vim.api.nvim_create_autocmd(event, {
            --   buffer = bufnr,
            --   group = group,
            --   callback = function()
            --     vim.lsp.buf.format({ bufnr = bufnr, async = async })
            --   end,
            --   desc = "[lsp] format on save",
            -- })
        end

        if client.supports_method("textDocument/rangeFormatting") then
            vim.keymap.set("x", "<leader>fr", function()
                vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })
        end
    end,
})
