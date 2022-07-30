xrdb -merge ~/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &


exec i3
