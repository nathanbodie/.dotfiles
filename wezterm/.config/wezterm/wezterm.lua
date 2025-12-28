local wezterm = require 'wezterm'
local vague = require 'vague'
local config = {}

config.colors = vague.colors
config.automatically_reload_config = true

-- Window padding
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

return config
