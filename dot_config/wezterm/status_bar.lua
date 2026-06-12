local M = {}
local wezterm = require("wezterm")

function M.setup()
	wezterm.on("update-right-status", function(window, pane)
		local domain = pane:get_domain_name()
		local workspace = window:active_workspace()
		local vars = pane:get_user_vars()
		local tmux_session = vars.tmux_session
		if tmux_session and tmux_session ~= "" then
			workspace = tmux_session
		end

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
