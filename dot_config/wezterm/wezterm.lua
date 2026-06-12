local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- config.color_scheme = "Catppuccin Mocha" -- or macchiato, frappe, latte
config.color_scheme = "Tokyo Night" -- or macchiato, frappe, latte
-- config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

wezterm.on("update-right-status", function(window, pane)
	local workspace = window:active_workspace()
	local domain = pane:get_domain_name()

	local overrides = window:effective_config()
	local fancy_bg = overrides.window_frame.active_titlebar_bg
	window:set_right_status(wezterm.format({
		{ Background = { Color = fancy_bg } },
		{ Foreground = { Color = overrides.window_frame.active_titlebar_fg } },
		{ Text = " Domain: " .. domain .. " | Workspace: " .. workspace .. " " },
	}))
end)

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
		action = act.ActivateTab(i - 1),
	})
end

table.insert(config.keys, {
	key = "0",
	mods = "ALT",
	action = act.ActivateTab(-1),
})

config.font = wezterm.font_with_fallback({
	"JetBrainsMonoNL Nerd Font",
	"Adwaita Mono",
})

return config
