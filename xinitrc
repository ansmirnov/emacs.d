# Disable access control
xhost +SI:localuser:$USER

# Make Java applications aware this is a non-reparenting window manager.
export _JAVA_AWT_WM_NONREPARENTING=1

# Themes, etc
gnome-settings-daemon &

# Fallback cursor
xsetroot -cursor_name left_ptr

# Keyboard repeat rate
xset r rate 200 60

xss-lock -- slock &

xautolock -time 10 -locker "systemctl suspend -i" &

# Start Emac
exec dbus-launch --exit-with-session emacs
