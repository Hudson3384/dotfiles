systemctl --user import-environment DISPLAY &
xcompmgr &
systemctl --user import-environment DISPLAY &
eval `ssh-agent` &
ssh-add &
keepassxc &
flameshot &
setxkbmap -layout us,br -option 'grp:alt_shift_toggle'  -option caps:escape & 
exec i3 &
zsh -c  ./.config/i3/boot.sh

