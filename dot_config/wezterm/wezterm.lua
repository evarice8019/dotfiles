local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- config.color_scheme = "Catppuccin Mocha" -- or macchiato, frappe, latte
config.color_scheme = "tokyonight_moon" -- or macchiato, frappe, latte

config.font = wezterm.font_with_fallback({
	"JetBrainsMonoNL Nerd Font",
	"Adwaita Mono",
})

require("keys").apply_to_config(config)

require("status_bar").setup()

return config
