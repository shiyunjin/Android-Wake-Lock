#!/system/bin/sh

MODDIR="$(dirname "$(readlink -f "$0")")"

while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 5s
done

echo "PowerManagerService.noSuspend" > /sys/power/wake_lock
