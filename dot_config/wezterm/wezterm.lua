local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- config.color_scheme = "Catppuccin Mocha" -- or macchiato, frappe, latte

config.keys = {
	-- Vertical split (side-by-side)
	{
		key = "e",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Optional: Horizontal split (top-to-bottom) often paired with 'o'
	{
		key = "o",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

table.insert(config.keys, {
	key = "0",
	mods = "ALT",
	action = act.ActivateTab(-1),
})

config.font = wezterm.font("JetBrainsMonoNL Nerd Font")

return config
