local awful = require("awful")
local theme = require("src.theme.theme")

local function autostart(table)
  for _, t in ipairs(table) do
    awful.spawn(t);
  end
end

local auto_list = {
    "nitrogen --set-zoom-fill " .. theme.wallpaper
}

autostart(auto_list)
