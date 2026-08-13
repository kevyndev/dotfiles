---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- # https://wiki.hypr.land/Configuring/Basics/Binds/ for more

-- Launch Default Applications (Terminal, File Manager, Notes, Text Editor, Browser, etc.)
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(textedit))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + CTRL + l", hl.dsp.exec_cmd("hyprlock"))


-- Functions
hl.bind(mainMod .. " + C", hl.dsp.window.close({ window = "activewindow" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = "true", window = "activewindow" }))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle", window = "activewindow" }))

--[[ TO DO

--bind = $mainMod, G, exec, hyprctl dispatch togglefloating && hyprctl dispatch resizeactive exact 50% 60% && hyprctl dispatch centerwindow

bind = $mainMod, N, layoutmsg, togglesplit # dwindle

]]

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "r" }))

-- Move window with mainMod + arrow keys
hl.bind(mainMod .. " SHIFT + h", hl.dsp.focus({ window = "l" }))
hl.bind(mainMod .. " SHIFT + j", hl.dsp.focus({ window = "d" }))
hl.bind(mainMod .. " SHIFT + k", hl.dsp.focus({ window = "u" }))
hl.bind(mainMod .. " SHIFT + l", hl.dsp.focus({ window = "r" }))

-- Switch workspaces with mainMod + [0-9]

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind(mainMod .. " + 10", hl.dsp.focus({ workspace = "10" }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
hl.bind(mainMod .. " SHIFT + 1", hl.dsp.window.move({ workspace = "1", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 2", hl.dsp.window.move({ workspace = "2", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 3", hl.dsp.window.move({ workspace = "3", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 4", hl.dsp.window.move({ workspace = "4", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 5", hl.dsp.window.move({ workspace = "5", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 6", hl.dsp.window.move({ workspace = "6", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 7", hl.dsp.window.move({ workspace = "7", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 8", hl.dsp.window.move({ workspace = "8", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 9", hl.dsp.window.move({ workspace = "9", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " SHIFT + 10", hl.dsp.window.move({ workspace = "10", follow = "0", window = "activewindow" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + MOUSE_DOWN", hl.dsp.window.move({ workspace = "e+1", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + MOUSE_UP", hl.dsp.window.move({ workspace = "e-1", follow = "0", window = "activewindow" }))

--[[ TO DO

-- Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

-- Laptop multimedia keys for volume and LCD brightness
bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
bindel = ,XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+
bindel = ,XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-

-- Requires playerctl
bindl = , XF86AudioNext, exec, playerctl next
bindl = , XF86AudioPause, exec, playerctl play-pause
bindl = , XF86AudioPlay, exec, playerctl play-pause
bindl = , XF86AudioPrev, exec, playerctl previous

]]