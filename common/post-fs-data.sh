#!/system/bin/sh

# Live patch with su rules
/magisk/phh/bin/sepolicy-inject --live

setprop magisk.supath "/magisk/phh/bin"
setprop magisk.root 1

# Launch the su daemon
/magisk/phh/launch_daemonsu.sh &
