local wezterm = require("wezterm")

local M = {
	window_background_opacity = 0.5,
	default_prog = { "powershell", "-nologo" },
	font = wezterm.font("Cascadia Code"),
	font_size = 12.0,
}
return M
