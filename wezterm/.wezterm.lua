-- WezTerm

local wezterm = require 'wezterm'

local M = {}

M.color_scheme = 'Dracula'

M.window_background_opacity = 0.90

M.font = wezterm.font_with_fallback({ 'FiraCode Nerd Font', "JetBrains Mono" })

M.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}

M.enable_tab_bar = true
M.use_fancy_tab_bar = true
M.hide_tab_bar_if_only_one_tab = true
M.window_close_confirmation = "NeverPrompt"

M.enable_scroll_bar = true

M.default_prog = { "wsl.exe" }
M.window_decorations = "RESIZE"

local mux = wezterm.mux
local act = wezterm.action

wezterm.on('gui-startup', function ()
    local tab, pane, window = mux.spawn_window({})
    window:gui_window():maximize()
end)

M.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.7,
}
M.use_dead_keys = false
M.scrollback_lines = 5000
M.adjust_window_size_when_changing_font_size = false
M.hide_tab_bar_if_only_one_tab = true

M.window_frame = {
    font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
}

M.keys = {
  { key = 'f', mods = 'CMD', action = act.SplitVertical { domain = 'CurrentPaneDomain' }, },
  { key = 'd', mods = 'CMD', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  { key = 'h', mods = 'CMD', action = act.ActivatePaneDirection 'Left', },
  { key = 'l', mods = 'CMD', action = act.ActivatePaneDirection 'Right', },
  { key = 't', mods = 'CMD', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CMD', action = act.CloseCurrentTab{ confirm = false } },
  { key = 'x', mods = 'CMD', action = act.CloseCurrentPane{ confirm = false } },
}


return M;
