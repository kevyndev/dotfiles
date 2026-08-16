---------------
---- INPUT ----
---------------

-- # https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = -0.2, -- -1.0 - 1.0, 0 means no modification.

    },
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "logitech-g403-hero-gaming-mouse-keyboard-1",
    sensitivity = 1,
})