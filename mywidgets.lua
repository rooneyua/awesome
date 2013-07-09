local wibox = require("wibox")
local blingbling = require("blingbling")
vicious = require("vicious")

my_separator = wibox.widget.textbox("::")

my_kbdwidget = wibox.widget.textbox("Eng")

my_netwidget = blingbling.net({interface = "wlp4s0", show_text = true})
my_netwidget:set_ippopup()

my_volume_master = blingbling.volume({height = 18, width = 40, bar =true, show_text = true, label ="$percent%"})
my_volume_master:update_master()
my_volume_master:set_master_control()

my_battary_widget = wibox.widget.textbox()
vicious.register( my_battary_widget, vicious.widgets.bat, '$1$2% ', 1, "BAT1" )

