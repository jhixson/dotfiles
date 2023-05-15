local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on('update-right-status', function(window, pane)
    local workspace_name = window:active_workspace()
    window:set_right_status(wezterm.format {
        { Attribute = { Italic = true } },
        { Text = workspace_name .. ' ' },
    })
end)


return {
    color_scheme = "Ocean (base16)",
    window_background_opacity = 0.8,
    macos_window_background_blur = 20,
    use_fancy_tab_bar = false,
    tab_max_width = 50,
    font = wezterm.font_with_fallback { 'Fira Code', 'Menlo', 'JetBrains Mono' },
    font_size = 13.0,
    line_height = 1.1,
    keys = {
        {
            key = 'd',
            mods = 'SUPER',
            action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'd',
            mods = 'SUPER|SHIFT',
            action = act.SplitVertical { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'LeftArrow',
            mods = 'CTRL',
            action = act.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'CTRL',
            action = act.ActivatePaneDirection 'Right',
        },
        {
            key = 'DownArrow',
            mods = 'CTRL',
            action = act.ActivatePaneDirection 'Down',
        },
        {
            key = 'UpArrow',
            mods = 'CTRL',
            action = act.ActivatePaneDirection 'Up',
        },
        {
            key = 'z',
            mods = 'SUPER|SHIFT',
            action = act.TogglePaneZoomState,
        },
        {
            key = '{',
            mods = 'SHIFT|ALT',
            action = act.MoveTabRelative(-1)
        },
        {
            key = '}',
            mods = 'SHIFT|ALT',
            action = act.MoveTabRelative(1)
        },
        {
            key = 'l',
            mods = 'SUPER|SHIFT',
            action = act.ShowLauncher
        },
        {
            key = 's',
            mods = 'SUPER|SHIFT',
            action = act.ShowLauncherArgs {
                flags = 'FUZZY|WORKSPACES',
            },
        },
        {
            key = 'LeftArrow',
            mods = 'SUPER|SHIFT',
            action = act.SwitchWorkspaceRelative(-1)
        },
        {
            key = 'RightArrow',
            mods = 'SUPER|SHIFT',
            action = act.SwitchWorkspaceRelative(1)
        },
        {
            key = 'n',
            mods = 'SUPER|SHIFT',
            action = act.PromptInputLine {
                description = wezterm.format {
                    { Attribute = { Intensity = 'Bold' } },
                    { Foreground = { AnsiColor = 'Fuchsia' } },
                    { Text = 'Enter name for new workspace' },
                },
                action = wezterm.action_callback(function(window, pane, line)
                    -- line will be `nil` if they hit escape without entering anything
                    -- An empty string if they just hit enter
                    if line and line ~= "" then
                        window:perform_action(
                            act.SwitchToWorkspace {
                                name = line,
                            },
                            pane
                        )
                    end
                end),
            },
        },
    },
}
