#!/system/bin/sh

export PATH=$OLDPATH

# Switch contexts
echo "u:r:su_daemon:s0" > /proc/self/attr/current

# Start daemon
exec /magisk/phh/bin/su --daemon