-- WezTerm

local wezterm = require 'wezterm'

local M = {}

M.color_scheme = 'Dracula'

M.window_background_opacity = 0.90

M.font = wezterm.font('FiraCode Nerd Font')

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

return M;
