-- x86_64-pc-windows-msvc - Windows
-- x86_64-unknown-linux-gnu - Linux
-- x86_64-apple-darwin - macOS (Intel)
-- aarch64-apple-darwin - macOS (Apple Silicon)

local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {
	window_background_opacity = 0.5,
	font_size = 12.0,
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.font = wezterm.font("Cascadia Code")
	config.default_prog = { "powershell", "-nologo" }
elseif wezterm.target_triple == "x86_64-unknown-linux" then
	config.default_prog = { "bash" }
end

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
