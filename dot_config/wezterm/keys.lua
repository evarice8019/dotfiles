local wezterm = require("wezterm")
local action = wezterm.action
local M = {}

function M.apply_to_config(config)
	-- config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
	config.keys = {
		-- Vertical split (side-by-side)
		{
			key = "e",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		-- Horizontal split (top-to-bottom)
		{
			key = "o",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		-- {
		-- 	mods = "LEADER",
		-- 	key = "=",
		-- 	action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		-- },
		-- {
		-- 	mods = "LEADER",
		-- 	key = "-",
		-- 	action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		-- },
		{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
		-- { key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
		-- { key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
		-- { key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
		-- { key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
	}

	for i = 1, 9 do
		table.insert(config.keys, {
			key = tostring(i),
			mods = "ALT",
			action = action.ActivateTab(i - 1),
		})
	end

	table.insert(config.keys, {
		key = "0",
		mods = "ALT",
		action = action.ActivateTab(-1),
	})
end

return M
