local M = {}
local wezterm = require("wezterm")

function M.setup()
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
end

return M
