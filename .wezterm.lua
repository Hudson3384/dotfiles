-- Pull in the wezterm API
local wezterm = require 'wezterm'
local dimmer = { brightness = 0.4 }
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.enable_tab_bar = true
config.color_scheme = 'Dracula'
config.default_prog = { '/bin/zsh', '-l' }
config.enable_tab_bar = false
config.background = {
 {
    source = {
      File = './wallpapers/blackhole.png',
    },
    repeat_x = 'Mirror',
    hsb = dimmer,
  },
  {
    source = {
      File = './wallpapers/stars2.jpg',
    },
    opacity = 0.3,
    width = '100%',
    repeat_x = 'Mirror',
    repeat_y = 'Repeat',
    hsb = dimmer,
    attachment = { Parallax = 3.0 },
  },
  {
    source = {
      File = './wallpapers/stars2.jpg',
    },
    width = '75%',
    opacity = 0.2,
    repeat_x = 'Mirror',
    vertical_align = 'Bottom',
    hsb = dimmer,
    attachment = { Parallax = 1.2 },
  },
  {
    source = {
      File = './wallpapers/stars2.jpg',
    },
    width = '40%',
    opacity = 0.1,
    repeat_x = 'Mirror',
    vertical_align = 'Bottom',
    hsb = dimmer,
    attachment = { Parallax = 0.3 },
  },
}
return config
