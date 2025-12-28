-- Vague theme for WezTerm
-- Based on the "vague" Neovim theme
-- A dark, muted theme with sophisticated colors

local config = {}

-- Background and foreground
config.colors = {
  foreground = "#cdcdcd",
  background = "#141415",
  
  -- Cursor colors
  cursor_bg = "#cdcdcd",
  cursor_fg = "#141415",
  cursor_border = "#cdcdcd",
  
  -- Selection colors
  selection_bg = "#333738",
  selection_fg = "#cdcdcd",
  
  -- Normal colors (0-7)
  ansi = {
    "#141415",  -- black (background)
    "#d8647e",  -- red (error)
    "#7fa563",  -- green (plus/success)
    "#f3be7c",  -- yellow (warning/delta)
    "#7e98e8",  -- blue (hint)
    "#bb9dbd",  -- magenta (parameter)
    "#9bb4bc",  -- cyan (type)
    "#cdcdcd",  -- white (foreground)
  },
  
  -- Bright colors (8-15)
  brights = {
    "#606079",  -- bright black (comment)
    "#d8647e",  -- bright red
    "#7fa563",  -- bright green
    "#e0a363",  -- bright yellow (number)
    "#6e94b2",  -- bright blue (keyword)
    "#bb9dbd",  -- bright magenta
    "#b4d4cf",  -- bright cyan (builtin)
    "#c3c3d5",  -- bright white (property)
  },
}

return config
