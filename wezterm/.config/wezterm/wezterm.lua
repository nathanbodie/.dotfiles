local wezterm = require 'wezterm'
local vague = require 'vague'
local config = wezterm.config_builder()

config.colors = vague.colors
config.automatically_reload_config = true
config.enable_tab_bar = false

-- Window padding
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

-- Font
config.font_size = 24
config.font = wezterm.font {family = "JetBrainsMonoNL Nerd Font Mono"}

return config
