local M = {
    window_background_opacity = 0.7,
    color_scheme = "Dracula+",
    hide_mouse_cursor_when_typing = false,
    warn_about_missing_glyphs = false,
}

local wezterm = require("wezterm")
local mux = wezterm.mux

-- x86_64-pc-windows-msvc - Windows
-- x86_64-unknown-linux-gnu - Linux
-- x86_64-apple-darwin - macOS (Intel)
-- aarch64-apple-darwin - macOS (Apple Silicon)

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    M.default_prog = { "powershell", "-nologo" }
    M.font = wezterm.font("Cascadia Code")
    M.font_size = 13.0
elseif wezterm.target_triple == "x86_64-unknown-linux" then
    M.default_prog = { "bash" }
    M.font = wezterm.font("Hack")
    M.font_size = 9.0
end

wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

return M
