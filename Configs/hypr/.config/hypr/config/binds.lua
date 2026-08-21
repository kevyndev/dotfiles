---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use

local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local textedit = "code"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local ipc = "noctalia msg"

-- # https://wiki.hypr.land/Configuring/Basics/Binds/ for more

-- Launch Default Applications (Terminal, File Manager, Notes, Text Editor, Browser, etc.)
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(textedit))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + CTRL + l", hl.dsp.exec_cmd(ipc .. " session lock"))

-- Functions
hl.bind(mainMod .. " + C", hl.dsp.window.close({ window = "activewindow" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", layout_aware = "true", window = "activewindow" }))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle", window = "activewindow" }))

hl.bind(mainMod .. " + N", hl.dsp.layout("togglesplit"))

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd(ipc .. " screenshot-fullscreen pick")) --screenshot-fullscreen [pick|monitor|all]
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd(ipc .. " screenshot-region"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "r" }))

-- Move window with mainMod + arrow keys
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "l", group_aware = "true", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "d", group_aware = "true", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "u", group_aware = "true", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "r", group_aware = "true", window = "activewindow" }))

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

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = "1", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = "2", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = "3", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = "4", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = "5", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = "6", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = "7", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = "8", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = "9", follow = "0", window = "activewindow" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1", follow = "0", window = "activewindow" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1", follow = "0", window = "activewindow" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Multimedia keys for volume and play/pause
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
