----------------------------------
-- This is the layoutbox widget --
----------------------------------

-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")
-- require("src.core.signals")

-- Returns the layoutbox widget
return function()
  local layout = wibox.widget {
    {
      {
        awful.widget.layoutbox(),
        id = "icon_layout",
        widget = wibox.container.place
      },
      id = "icon_margin",
      left = dpi(4),
      right = dpi(4),
      top = dpi(3),
      bottom = dpi(3),
      forced_width = dpi(35),
      widget = wibox.container.margin
    },
    bg = color["fg_blue"],
    shape = function(cr, width, height)
      gears.shape.rounded_rect(cr, width, height, 5)
    end,
    widget = wibox.container.background
  }

  -- Signals
  -- Hover_signal(layout, color["LightBlue200"], color["Grey900"])

  layout:connect_signal(
    "button::press",
    function()
      awful.layout.inc(-1)
    end
  )

  return layout
end