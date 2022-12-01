--------------------------------
-- This is the power widget --
--------------------------------

-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")
local globals = require("src.globals")
--require("src.core.signals")

-- Icon directory path
local icondir = awful.util.getdir("config") .. "src/assets/icons/power/"

return function()

  local power_widget = wibox.widget {
    {
      {
        {
          {
            {
              id = "icon",
              image = gears.color.recolor_image(icondir .. "power.svg", color["bg"]),
              widget = wibox.widget.imagebox,
              resize = false
            },
            id = "icon_layout",
            widget = wibox.container.place
          },
          id = "icon_margin",
          --top = dpi(2),
          widget = wibox.container.margin
        },
        id = "power_layout",
        layout = wibox.layout.fixed.horizontal
      },
      id = "container",
      left = dpi(globals.powermenu_margin),
      right = dpi(globals.powermenu_margin),
      widget = wibox.container.margin
    },
    bg = color["bg_red"],
    fg = color["bg"],
    shape = function(cr, width, height)
      gears.shape.rounded_rect(cr, width, height, 5)
    end,
    widget = wibox.container.background
  }

  -- Signals
  --Hover_signal(power_widget, color["Red200"], color["Grey900"])

  power_widget:connect_signal(
    "button::release",
    function()
      awesome.emit_signal("module::powermenu:show")
    end
  )

  return power_widget
end
