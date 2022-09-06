local beautiful = require("beautiful")
local awful = require("awful")

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init(awful.util.getdir("config") .. "src/theme/theme.lua")
beautiful.notification_font = "Cascadia Code 14"
beautiful.useless_gap = 8
