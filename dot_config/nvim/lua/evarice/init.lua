vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- Show absolute line numbers
vim.wo.number = true

require("evarice.plugins")
require("evarice.keymap")
