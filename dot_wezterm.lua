local wezterm = require 'wezterm'

return {
    color_scheme = "Ocean (base16)",
    window_background_opacity = 0.9,
    use_fancy_tab_bar = false,
    tab_max_width = 25,
    font = wezterm.font_with_fallback { 'Fira Code', 'Menlo', 'JetBrains Mono' },
    font_size = 13.0,
    line_height = 1.1,
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
        {
            key = 'LeftArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Right',
        },
        {
            key = 'DownArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Down',
        },
        {
            key = 'UpArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Up',
        },
    },
}
