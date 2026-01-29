-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- Show absolute line numbers
vim.wo.number = true

-- autocmds
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp" },
    callback = function() vim.treesitter.start() end,
})

vim.lsp.enable('clangd')

require("evarice.plugins")
require("evarice.keymap")

vim.cmd.colorscheme("kanagawa-wave")
