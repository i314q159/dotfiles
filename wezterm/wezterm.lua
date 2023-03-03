local wezterm = require("wezterm")

local M = {
	window_background_opacity = 0.5,
	font_size = 12.0,
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	M.font = wezterm.font("Cascadia Code")
	M.default_prog = { "powershell", "-nologo" }
end

return M
