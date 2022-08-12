local awful = require('awful')
local gtable = require('gears.table')

appkeys = gtable.join(
  -- Standard programs
  awful.key({ modkey }, "Return",
    function()
      awful.spawn(terminal)
    end,
    {description = "open a terminal", group = "apps"}),
  awful.key({modkey }, "F3",
    function ()
      -- awful.spawn.with_shell("emacs")
      quake:toggle()
    end,
    {description = "opens emacs", group = "apps"}),

  awful.key({modkey}, "Print",
      function ()
        awful.spawn("xfce4-screenshooter -f -c")
      end,
      {description = "opens spotify", group = "apps"}),
  awful.key({}, "Print",
      function ()
        awful.spawn("xfce4-screenshooter -r -c")
      end,
      {description = "Takes screenshoot and copy to clipboard", group = "apps"}),
  awful.key({modkey, "Shift"}, "r",
       function()
         awful.spawn("rofi -show run")
      end,
      {description = "Runs Rofi Run Prompt", group = "launcher"})
  )
