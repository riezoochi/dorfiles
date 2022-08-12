local awful = require('awful')
local gtable = require('gears.table')

movekeys = gtable.join(

 awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end,
           {description = "swap with next client by index", group = "client"}),
  awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end,
            {description = "swap with previous client by index", group = "client"}),
  awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end,
            {description = "focus the next screen", group = "screen"}),
  awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end,
            {description = "focus the previous screen", group = "screen"}),
  awful.key({ modkey,           }, "u", awful.client.urgent.jumpto,
            {description = "jump to urgent client", group = "client"}),
  awful.key({ modkey,           }, "Tab",
      function ()
          awful.client.focus.history.previous()
          if client.focus then
              client.focus:raise()
          end
      end,
      {description = "go back", group = "client"}),
  awful.key({ modkey,           }, "Left",   awful.tag.viewprev,
            {description = "view previous", group = "tag"}),
  awful.key({ modkey,           }, "Right",  awful.tag.viewnext,
            {description = "view next", group = "tag"}),
  awful.key({ modkey,           }, "Escape", awful.tag.history.restore,
            {description = "go back", group = "tag"}),

  awful.key({ modkey,           }, "j",
      function ()
          awful.client.focus.byidx( 1)
      end,
      {description = "focus next by index", group = "client"}
  ),
  awful.key({ modkey,           }, "k",
      function ()
          awful.client.focus.byidx(-1)
      end,
      {description = "focus previous by index", group = "client"}
  )
 )
