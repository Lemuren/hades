---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_configuration_dir() .. "themes/cherry/"

local theme = {}

theme.font          = "Quicksand Bold 12"

theme.bg_normal     = "#191d2744" -- Very dark, translucent
theme.bg_focus      = "#e8f5e966" -- "Honeydew", i.e. mint green
theme.bg_urgent     = "#ffccbc"
theme.bg_minimize   = "#f1f8e9"

theme.fg_normal     = "#f8e5eeff"
theme.fg_focus      = "#f8e5eeff"
theme.fg_urgent     = "#bf360c"
theme.fg_minimize   = "#33691e"

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = "#191d27"
theme.border_focus  = "#8fbcbb"
theme.border_marked = "#91231c"

theme.wallpaper = themes_path .. "background.png"

theme.frames = {
	themes_path .. "ducks/frame_00_delay-0.1s.png",
	themes_path .. "ducks/frame_01_delay-0.1s.png",
	themes_path .. "ducks/frame_02_delay-0.1s.png",
	themes_path .. "ducks/frame_03_delay-0.1s.png",
	themes_path .. "ducks/frame_04_delay-0.1s.png",
	themes_path .. "ducks/frame_05_delay-0.1s.png",
	themes_path .. "ducks/frame_06_delay-0.1s.png",
	themes_path .. "ducks/frame_07_delay-0.1s.png",
	themes_path .. "ducks/frame_09_delay-0.1s.png",
	themes_path .. "ducks/frame_10_delay-0.1s.png",
	themes_path .. "ducks/frame_11_delay-0.1s.png",
	themes_path .. "ducks/frame_12_delay-0.1s.png",
	themes_path .. "ducks/frame_13_delay-0.1s.png",
	themes_path .. "ducks/frame_14_delay-0.1s.png",
	themes_path .. "ducks/frame_15_delay-0.1s.png",
	themes_path .. "ducks/frame_16_delay-0.1s.png",
	themes_path .. "ducks/frame_17_delay-0.1s.png",
	themes_path .. "ducks/frame_18_delay-0.1s.png",
	themes_path .. "ducks/frame_19_delay-0.1s.png",
	themes_path .. "ducks/frame_20_delay-0.1s.png",
	themes_path .. "ducks/frame_21_delay-0.1s.png",
	themes_path .. "ducks/frame_22_delay-0.1s.png",
	themes_path .. "ducks/frame_23_delay-0.1s.png",
	themes_path .. "ducks/frame_24_delay-0.1s.png",
	themes_path .. "ducks/frame_25_delay-0.1s.png",
	themes_path .. "ducks/frame_26_delay-0.1s.png",
	themes_path .. "ducks/frame_27_delay-0.1s.png",
	themes_path .. "ducks/frame_28_delay-0.1s.png",
	themes_path .. "ducks/frame_29_delay-0.1s.png",
	themes_path .. "ducks/frame_30_delay-0.1s.png",
	themes_path .. "ducks/frame_31_delay-0.1s.png",
	themes_path .. "ducks/frame_32_delay-0.1s.png",
	themes_path .. "ducks/frame_33_delay-0.1s.png",
	themes_path .. "ducks/frame_34_delay-0.1s.png",
	themes_path .. "ducks/frame_35_delay-0.1s.png",
	themes_path .. "ducks/frame_36_delay-0.1s.png",
	themes_path .. "ducks/frame_37_delay-0.1s.png",
	themes_path .. "ducks/frame_38_delay-0.1s.png",
	themes_path .. "ducks/frame_39_delay-0.1s.png",
	themes_path .. "ducks/frame_40_delay-0.1s.png",
	themes_path .. "ducks/frame_41_delay-0.1s.png",
	themes_path .. "ducks/frame_42_delay-0.1s.png",
}


return theme
