xcompmgr &
systemctl --user import-environment DISPLAY &
setxkbmap -layout us,br -option 'grp:alt_shift_toggle'  -option caps:escape & 
exec i3


