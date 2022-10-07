--------------------------------------------------------------------------------------------------------------
-- This is the statusbar, every widget, module and so on is combined to all the stuff you see on the screen --
--------------------------------------------------------------------------------------------------------------
-- Awesome Libs
local awful = require("awful")


awful.screen.connect_for_each_screen(
-- For each screen this function is called once
-- If you want to change the modules per screen use the indices
-- e.g. 1 would be the primary screen and 2 the secondary screen.
  function(s)
  local layouts = {
      awful.layout.suit.tile,
      awful.layout.suit.floating,
      awful.layout.suit.tile.bottom,
      awful.layout.suit.max,
      awful.layout.suit.spiral,
  }
  awful.layout.layouts = layouts

  -- Create 9 tags
  awful.tag(
    { "1", "2", "3", "4", "5", "6", "7", "8", "9" },
    s,
    layouts[1]
  )

  require("src.modules.volume_osd")(s)
  require("src.modules.powermenu")(s)
  require("src.modules.volume_osd")(s)
  -- require("src.modules.brightness_osd")(s)
  require("src.modules.volume_controller")(s)

  -- Widgets
  s.battery = require("src.widgets.battery")()
  s.audio = require("src.widgets.audio")(s)
  -- s.date = require("src.widgets.date")()
  s.clock = require("src.widgets.clock")()
  --s.bluetooth = require("src.widgets.bluetooth")()
  s.layoutlist = require("src.widgets.layout_list")()
  s.powerbutton = require("src.widgets.power")()
  -- s.kblayout = require("src.widgets.kblayout")(s)
  s.taglist = require("src.widgets.taglist")(s)
  s.network = require("src.widgets.network")(s)
  -- s.tasklist = require("src.widgets.tasklist")(s)
  --s.cpu_freq = require("src.widgets.cpu_info")("freq", "average")

  require("bar.left_bar")(s, { s.layoutlist, s.taglist })
  require("bar.right_bar")(s, { s.clock, s.network, s.audio, s.battery, s.powerbutton })
end
)
