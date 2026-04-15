local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

-- THE LOOK (Stable & Error-Free)
config.color_scheme = 'Tokyo Night'
config.font_size = 16.0
config.line_height = 1.2
config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
config.window_background_opacity = 1.0

-- COLORS & SCROLLBAR VISIBILITY
config.colors = {
  -- We use rgba(red, green, blue, alpha) for guaranteed compatibility
  -- This is the Tokyo Night purple at 40% transparency
  scrollbar_thumb = 'rgba(187, 154, 247, 0.4)',
}

-- THE WINDOW & SCROLLBAR
config.enable_scroll_bar = true
config.window_decorations = "TITLE | RESIZE"
config.window_close_confirmation = 'NeverPrompt'
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false 

-- This adds breathing room so text doesn't touch the edges or scrollbar
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

return config