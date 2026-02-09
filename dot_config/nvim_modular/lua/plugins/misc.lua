-- Miscellaneous smaller plugins
return {
	-- Detect tabstop and shiftwidth automatically
	{ "NMAC427/guess-indent.nvim", opts = {} },

	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	-- Rust development
	{
		"mrcjkb/rustaceanvim",
		version = "^7",
		lazy = false,
	},

	-- Practice vim motions
	{ "ThePrimeagen/vim-be-good" },
}
