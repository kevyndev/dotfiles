--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

--windowrule = match:class ^(discord)$, workspace 8 silent
hl.window_rule({
    name = "discord",
    match = {
        class = "discord"
    },
    workspace = 8 silent
})

--windowrule = match:class ^(Spotify)$, workspace 9 silent
hl.window_rule({
    name = "Spotify",
    match = {
        class = "Spotify"
    },
    workspace = 9 silent
})

hl.window_rule({
    name = "floating windows",
    match = {
        class = "org.pulseaudio.pavucontrol"
    },
    float = 1,
    size = {1000, 600}
})

hl.window_rule({
    name = "calculator-floating",
    match = {
        class = "org.kde.kalk"
    },
    float = 1
})
