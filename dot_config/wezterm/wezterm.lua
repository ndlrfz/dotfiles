local wezterm = require("wezterm")
-- test
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.font = wezterm.font("Iosevka SS14", { weight = "Regular" })
config.freetype_load_target = "Normal"
config.font_size = 15.2
config.line_height = 1.1
-- config.colors = require('cyberdream')
-- config.color_scheme = " Everforest Dark (Gogh) Monokai Soda tokyonight_moon tokyonight_day Espresso Espresso Libre"
config.color_scheme = "Everforest Dark (Gogh)"
config.warn_about_missing_glyphs = false

-- spawn zellij as the default shell
config.default_prog = { "/usr/bin/zsh" }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

local padding = 5
config.window_padding = {
	top = padding,
	left = padding,
	right = padding,
	bottom = padding,
}

return config
