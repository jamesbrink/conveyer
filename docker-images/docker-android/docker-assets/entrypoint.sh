#!/bin/bash
echo "Starting Android"
export PATH=/opt/TurboVNC/bin:$PATH
cleanup ()
{
  echo "Exiting"
  vncserver -kill :1
  pkill -15 emulator
  exit $?
}

trap cleanup SIGTERM
# Clean up any old vnc sessions
rm -f /tmp/.X*-lock
rm -rf /tmp/.X11-unix
vncserver -desktop Android -alwaysshared
jwm &
emulator @Nexus_5X_API_%s &

IP=`hostname -i`
socat tcp-listen:5554,bind=$IP,fork tcp:127.0.0.1:5554 &
socat tcp-listen:5555,bind=$IP,fork tcp:127.0.0.1:5555 &
adb logcat &
wait ${!}
