-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- Show absolute line numbers
vim.wo.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- autocmds
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp" },
    callback = function() vim.treesitter.start() end,
})

-- Format on save for Rust and C/C++
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.rs", "*.c", "*.cpp", "*.h", "*.hpp" },
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

require("evarice.plugins")
require("evarice.keymap")

vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')

vim.cmd.colorscheme("kanagawa-wave")

