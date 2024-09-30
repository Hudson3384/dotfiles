systemctl --user import-environment DISPLAY &
xcompmgr &
systemctl --user import-environment DISPLAY &
flameshot &
setxkbmap -layout us,br -option 'grp:alt_shift_toggle'  -option caps:escape & 
exec i3


