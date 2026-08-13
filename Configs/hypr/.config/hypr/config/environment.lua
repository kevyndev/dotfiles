-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- # https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "18")
hl.env("HYPRCURSOR_SIZE", "18")

# Toolkit backend
env = GDK_BACKEND,wayland,x11,*
hl.env("GDK_BACKEND", "wayland,x11,*")
env = QT_QPA_PLATFORM,wayland;xcb
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
env = SDL_VIDEODRIVER,wayland
hl.env("SDL_VIDEODRIVER", "wayland")
env = CLUTTER_BACKEND,wayland
hl.env("CLUTTER_BACKEND", "wayland")

# XDG specifications
env = XDG_CURRENT_DESKTOP,Hyprland
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
env = XDG_SESSION_TYPE,wayland
hl.env("XDG_SESSION_TYPE", "wayland")
env = XDG_SESSION_DESKTOP,Hyprland
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
env = XDG_MENU_PREFIX,arch-
hl.env("XDG_MENU_PREFIX", "arch-")

# Qt Variables
env = QT_AUTO_SCREEN_SCALE_FACTOR,1
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
env = QT_ENABLE_HIGHDPI_SCALING,1
hl.env("QT_ENABLE_HIGHDPI_SCALING", "1")
env = QT_SCREEN_SCALE_FACTORS,1;1
hl.env("QT_SCREEN_SCALE_FACTORS", "1;1")
env = QT_SCALE_FACTOR,1
hl.env("QT_SCALE_FACTOR", "1")
env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
env = QT_QPA_PLATFORMTHEME,qt5ct
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
env = WEBKIT_DISABLE_COMPOSITING_MODE,1
hl.env("WEBKIT_DISABLE_COMPOSITING_MODE", "1")

# Nvidia
env = GBM_BACKEND,nvidia-drm
hl.env("GBM_BACKEND", "nvidia-drm")
env = LIBVA_DRIVER_NAME,nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
env = __GLX_VENDOR_LIBRARY_NAME,nvidia
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

# Hyprshot
env = HYPRSHOT_DIR,/home/kevyn/Images/Screenshots
hl.env("HYPRSHOT_DIR", "/home/kevyn/Images/Screenshots")
