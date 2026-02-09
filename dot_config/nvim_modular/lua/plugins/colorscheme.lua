-- Colorschemes
return {
	{ -- Tokyonight (active)
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("tokyonight").setup({
				styles = {
					comments = { italic = false }, -- Disable italics in comments
				},
			})

			-- Load the colorscheme here.
			-- 'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{ -- Kanagawa (alternative)
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("kanagawa").setup({
				styles = {
					comments = { italic = false },
				},
			})
			-- 'kanagawa-wave', 'kanagawa-dragon', 'kanagawa-lotus'
			-- vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
}
