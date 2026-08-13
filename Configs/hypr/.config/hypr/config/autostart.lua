-------------------
---- AUTOSTART ----
-------------------

-- # https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function () 
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function ()
    hl.exec_cmd("waybar & swaync & systemctl --user start hyprpolkitagent")
    hl.exec_cmd("kbuildsycoca6")

    hl.timer(3000, function ()
        hl.exec_cmd("pano-scrobbler --minimized")
    end)
end)