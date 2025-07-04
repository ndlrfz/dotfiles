local wezterm = require("wezterm")
-- test
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- config.font = wezterm.font("Monaspace Neon", { weight = "Regular" })
config.font = wezterm.font({
	family = "Monaspace Neon Frozen",
	weight = "Regular",
	harfbuzz_features = { "calt=1", "liga=1", "ss01=1", "ss02=1", "ss03=1", "ss04=1", "ss06=1" },
})

config.freetype_load_target = "Normal"
config.font_size = 15
config.line_height = 1.3
-- config.colors = require("cyberdream")
-- config.color_scheme = " Everforest Dark (Gogh) Monokai Soda tokyonight_moon tokyonight_day Espresso Espresso Libre"
config.color_scheme = "gyokuro"
config.warn_about_missing_glyphs = false

-- spawn zellij as the default shell
-- config.default_prog = { '/sbin/tmux' }

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.94

local padding = 5
config.window_padding = {
	top = padding,
	left = padding,
	right = padding,
	bottom = padding,
}

return config
