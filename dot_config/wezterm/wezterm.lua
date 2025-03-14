local wezterm = require("wezterm")
-- test
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.font = wezterm.font("Maple Mono NF", { weight = "Light" })
config.freetype_load_target = "Normal"
config.font_size = 14.9
config.line_height = 1.1
-- config.colors = require('cyberdream')
-- config.color_scheme = " Everforest Dark (Gogh) Monokai Soda tokyonight_moon tokyonight_day Espresso Espresso Libre"
config.color_scheme = "Gruvbox dark, hard (base16)"
config.warn_about_missing_glyphs = false

-- spawn zellij as the default shell
config.default_prog = { "/sbin/tmux" }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.97

local padding = 5
config.window_padding = {
	top = padding,
	left = padding,
	right = padding,
	bottom = padding,
}

return config
