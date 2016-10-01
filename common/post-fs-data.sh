#!/system/bin/sh

launch_daemonsu() {
  export PATH=$OLDPATH
  # Switch contexts
  echo "u:r:su_daemon:s0" > /proc/self/attr/current
  # Start daemon
  exec /magisk/phh/bin/su --daemon
}

# Live patch with su rules
/magisk/phh/bin/sepolicy-inject --live

setprop magisk.supath "/magisk/phh/bin"
setprop magisk.root 1

# Launch the su daemon
(launch_daemonsu &)
