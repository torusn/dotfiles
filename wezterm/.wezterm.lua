-- WezTerm

local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Kanagawa (Gogh)'

config.font = wezterm.font_with_fallback({ 'FiraCode Nerd Font', "JetBrains Mono" })

config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"

config.enable_scroll_bar = true

-- config.default_prog = { "wsl.exe" }
config.default_domain = 'WSL:Ubuntu'
config.window_decorations = "RESIZE"

local mux = wezterm.mux
local act = wezterm.action

wezterm.on('gui-startup', function ()
    local tab, pane, window = mux.spawn_window({})
    window:gui_window():maximize()
end)

config.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.7,
}
config.use_dead_keys = false
config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
    font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
}

config.leader = { key = 'a', mods = 'SUPER', timeout_milliseconds = 1000 }
config.keys = {
  { key = '"', mods = 'CTRL|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' }, },
  { key = '%', mods = 'CTRL|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  { key = 'j', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down', },
  { key = 'k', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up', },
  { key = 'h', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left', },
  { key = 'l', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right', },
  { key = 't', mods = 'CTRL|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = act.CloseCurrentTab{ confirm = false } },
  { key = 'x', mods = 'CTRL|SHIFT', action = act.CloseCurrentPane{ confirm = false } },
}

return config;
