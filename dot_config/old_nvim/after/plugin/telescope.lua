local builtin = require('telescope.builtin')
local last_picker = nil

local function resumeable(fn)
	return function()
		if last_picker == fn then
			local ok = pcall(builtin.resume)
			if ok then
				return
			end
		end

		last_picker = fn
		fn()
	end
end

local function project_files()
	local git_dir = vim.fs.find('.git', { path = vim.loop.cwd(), upward = true })[1]
	if git_dir then
		builtin.git_files()
	else
		builtin.find_files()
	end
end

local function live_grep_file()
	builtin.live_grep({search_dirs={vim.fn.expand("%:p")}})
end

vim.keymap.set('n', '<leader>ff', resumeable(builtin.find_files), {})
vim.keymap.set('n', '<C-p>', resumeable(project_files), {})
vim.keymap.set('n', '<leader>fp', resumeable(project_files), {})
vim.keymap.set('n', '<leader>rg', resumeable(builtin.live_grep), {})
vim.keymap.set('n', '<leader>fg', resumeable(live_grep_file), {})
vim.keymap.set('n', '<leader>fb', resumeable(builtin.buffers), {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {})
-- vim.keymap.set('n', '<leader>fs', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

-- -- You dont need to set any of these options. These are the default ones. Only
-- -- the loading is important
-- require('telescope').setup {
--   extensions = {
--     fzf = {
--       fuzzy = true,                    -- false will only do exact matching
--       override_generic_sorter = true,  -- override the generic sorter
--       override_file_sorter = true,     -- override the file sorter
--       case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
--                                        -- the default case_mode is "smart_case"
--     }
--   }
-- }
-- -- To get fzf loaded and working with telescope, you need to call
-- -- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
