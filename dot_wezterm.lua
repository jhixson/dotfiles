local wezterm = require 'wezterm'

return {
  color_scheme = "Ocean (base16)",
  window_background_opacity = 0.9,
  use_fancy_tab_bar = false,
  tab_max_width = 250,
  font = wezterm.font_with_fallback { 'Fira Code', 'Menlo', 'JetBrains Mono' },
  font_size = 13.0,
  keys = {
    {
      key = 'd',
      mods = 'SUPER',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'd',
      mods = 'SUPER|SHIFT',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
  },
}
