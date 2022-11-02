local awful = require("awful")
local beautiful = require("beautiful")
-- local freedesktop = require("freedesktop")
local menubar = require("menubar")

local terminal = "alacritty"
local browser = "brave"
local filemanager = "thunar"
-- {{{ Menu
-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}
-- Create a launcher widget and a main menu
myawesomemenu = {
    { "hotkeys", function() return false, hotkeys_popup.show_help end },
    { "manual", terminal .. " -e man awesome" },
    { "restart", awesome.restart }
}

myexitmenu = {
    { "log out", function() awesome.quit() end, "/usr/share/icons/Gruvbox-Material-Dark/24x24@2x/actions/exit.svg" },
    { "suspend", "systemctl suspend", "/usr/share/icons/Arc-Maia/actions/24@2x/gnome-session-suspend.png" },
    { "reboot", "systemctl reboot", "/usr/share/icons/Arc-Maia/actions/24@2x/view-refresh.png" },
    { "shutdown", "poweroff", "/usr/share/icons/Arc-Maia/actions/24@2x/system-shutdown.png" }
}

-- mymainmenu = freedesktop.menu.build({
--     before = {
--         { "Terminal", terminal, "/usr/share/icons/Gruvbox-Material-Dark/32x32/apps/Alacritty.svg" },
--         { "Browser", browser, "/usr/share/icons/Gruvbox-Material-Dark/32x32/apps/brave.svg" },
--         { "Files", filemanager, "/usr/share/icons/Gruvbox-Material-Dark/32x32/apps/thunar.svg" },
--         -- other triads can be put here
--     },
--     after = {
--         { "Awesome", myawesomemenu, "/usr/share/awesome/icons/awesome16.png" },
--         { "Exit", myexitmenu, "/usr/share/icons/Gruvbox-Material-Dark/24x24@2x/actions/exit.svg" },
--         -- other triads can be put here
--     },
-- })
--
-- mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
--                                      menu = mymainmenu })
