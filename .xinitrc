xrandr --output eDP1 --mode 1600x900 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --primary --mode 1920x1080 --pos 1600x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output VGA1 --off --output VIRTUAL1 --off &
xcompmgr &
xscreensaver --no-splash &
feh --bg-scale /home/hudson/.wallpapers/morteevidaseverina.png &
~/apps/dwm-bar/dwm_bar.sh &
systemctl --user import-environment DISPLAY &
setxkbmap -layout us,br -option 'grp:alt_shift_toggle'  -option caps:escape & 
exec ~/.local/bin/startdwm.sh
