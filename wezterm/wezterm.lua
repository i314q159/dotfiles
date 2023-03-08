-- x86_64-pc-windows-msvc - Windows
-- x86_64-unknown-linux-gnu - Linux
-- x86_64-apple-darwin - macOS (Intel)
-- aarch64-apple-darwin - macOS (Apple Silicon)

local wezterm = require("wezterm")

local M = {
	window_background_opacity = 0.5,
	font_size = 12.0,
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	M.font = wezterm.font("Cascadia Code")
	M.default_prog = { "powershell", "-nologo" }
elseif wezterm.target_triple == "x86_64-unknown-linux" then
	M.default_prog = { "bash" }
end

return M
