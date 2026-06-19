-- hyprland.lua
-- Converted from hyprland.conf (hyprlang) to Lua (Hyprland >= 0.55)
-- https://wiki.hypr.land/Configuring/

--------------------
---- MONITORS ----
--------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({ output = "DP-3", mode = "1920x1080@360",  position = "0x0",    scale = 1 })
hl.monitor({ output = "DP-2", mode = "2560x1440@480",  position = "1920x0", scale = 1 })


---------------------
---- MY PROGRAMS ----
---------------------

local terminal    = "ghostty"
local fileManager = "dolphin"
local menu        = "wofi --show drun"
local browser     = "zen-browser"
local browserBin  = "zen-bin"
local discord     = "vesktop"
local soundcloud  = os.getenv("HOME") .. "/Applications/soundcloud-0.1.7-installer-linux.AppImage"


-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    hl.exec_cmd(terminal)
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
    hl.exec_cmd(browser)
    hl.exec_cmd(soundcloud .. " --no-sandbox")
    hl.exec_cmd(discord)
    -- hl.exec_cmd("nm-applet")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Requires a Hyprland restart — not applied on-the-fly for security reasons.
--
-- hl.config({ ecosystem = { enforce_permissions = true } })
-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------
---- LOOK AND FEEL ----
-----------------------

-- See https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = { colors = { "rgba(6b4a1aee)", "rgba(2a1c08ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = false,
        allow_tearing    = false,
        layout           = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = false, -- yes, please :)
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
    },

    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse  = 1,
        sensitivity   = 0,  -- -1.0 to 1.0, 0 = no modification
        accel_profile = "flat",

        touchpad = {
            natural_scroll        = true,
            middle_button_emulation = false,
        },
    },
})


-- Bezier curves
-- See https://wiki.hypr.land/Configuring/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { { 0.23, 1    }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear",         { type = "bezier", points = { { 0,    0    }, { 1,    1 } } })
hl.curve("almostLinear",   { type = "bezier", points = { { 0.5,  0.5  }, { 0.75, 1 } } })
hl.curve("quick",          { type = "bezier", points = { { 0.15, 0    }, { 0.1,  1 } } })

-- Animations
hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default"      })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick"        })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick"        })


--------------------------
---- WORKSPACE RULES ----
--------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- All workspaces pinned to DP-2; workspace 1 is the default.
--
-- "Smart gaps" / "No gaps when only" — uncomment if desired:
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0, rounding = 0 })
-- hl.window_rule({ match = { float = false, workspace = "f[1]"   }, border_size = 0, rounding = 0 })

hl.workspace_rule({ workspace = "1",  monitor = "DP-2", default = true })
hl.workspace_rule({ workspace = "2",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "3",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "4",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "5",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "6",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "7",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "8",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "9",  monitor = "DP-2" })
hl.workspace_rule({ workspace = "10", monitor = "DP-2" })


---------------
---- INPUT ----
---------------

-- Gesture: 3-finger horizontal swipe to change workspace
-- See https://wiki.hypr.land/Configuring/Basics/Binds/
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/
hl.device({ name = "epic-mouse-v1", sensitivity = -0.5 })


---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/
local mainMod = "SUPER"

-- Core window management
hl.bind(mainMod .. " + T",           hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q",           hl.dsp.window.close())
hl.bind(mainMod .. " + M",           hl.dsp.exit())
hl.bind(mainMod .. " + V",           hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",           hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + D",           hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E",           hl.dsp.layout("togglesplit")) -- dwindle

-- Move focus (vim-style)
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left"  }))
hl.bind(mainMod .. " + l",  hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",  hl.dsp.focus({ direction = "up"    }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down"  }))

-- Move windows within workspace
hl.bind(mainMod .. " + SHIFT + h",  hl.dsp.window.move({ direction = "left"  }))
hl.bind(mainMod .. " + SHIFT + l",  hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + k",  hl.dsp.window.move({ direction = "up"    }))
hl.bind(mainMod .. " + SHIFT + j",  hl.dsp.window.move({ direction = "down"  }))

-- Switch workspaces
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0",         hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "previous" }))

-- Move windows between monitors (also moves the workspace)
hl.bind(mainMod .. " + SHIFT + period", hl.dsp.window.move({ monitor = "+1" }))
hl.bind(mainMod .. " + SHIFT + comma",  hl.dsp.window.move({ monitor = "-1" }))

-- Move current workspace to next/prev monitor
hl.bind(mainMod .. " + CTRL + SHIFT + period", hl.dsp.workspace.move({ workspace = "current", monitor = "+1" }))
hl.bind(mainMod .. " + CTRL + SHIFT + comma",  hl.dsp.workspace.move({ workspace = "current", monitor = "-1" }))

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))

-- Screenshots / color picker
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("hyprpicker -a -f hex"))

-- Scroll through workspaces with mainMod + scroll wheel
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Multimedia / volume keys (repeating + locked)
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),        { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),       { locked = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),     { locked = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                   { locked = true, repeating = true })

-- Media control (locked)
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),        { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),    { locked = true })


------------------------------
---- WINDOWS & WORKSPACES ----
------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/
hl.window_rule({ match = { class = "com.mitchellh.ghostty" }, workspace = "1" })
hl.window_rule({ match = { class = "zen"                   }, workspace = "2" })
hl.window_rule({ match = { class = "spotify"               }, workspace = "3" })
hl.window_rule({ match = { class = "soundcloud-rpc"        }, workspace = "3" })
hl.window_rule({ match = { class = discord                 }, workspace = "4" })
hl.window_rule({ match = { class = "steam"                 }, workspace = "6" })

-- Suppress maximize requests from apps
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

-- Fix XWayland drag issues (no-focus on unclassed floating windows)
hl.window_rule({
    name       = "fix-xwayland-drag",
    match      = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})
