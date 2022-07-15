#!/bin/bash
set -e

# download the files from the repo
$(curl -s https://raw.githubusercontent.com/gdi3d/osx-mac-notify-battery-fully-charge/main/BatteryNotification.sh -O && \
    curl -s https://raw.githubusercontent.com/gdi3d/osx-mac-notify-battery-fully-charge/main/com.gdi3d.battery.full.notification.plist -O)

if [ ! -z "$?" ]; then
    echo "Installation Failed 😞"
    echo "Unable to download the files from the repository"
    echo
    echo "Try open a ticket at: https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new and paste the output of this screen into the ticket"
    exit 1
fi

CURRENT_DIR=$(pwd)

# Add the full path to the plist by replacing the var FULL_PATH_REPLACE
mv com.gdi3d.battery.full.notification.plist com.gdi3d.battery.full.notification.plist.template
sed "s|FULL_PATH_REPLACE|$CURRENT_DIR|" com.gdi3d.battery.full.notification.plist.template > com.gdi3d.battery.full.notification.plist 
rm com.gdi3d.battery.full.notification.plist.template

# Register the service
chmod a+x BatteryNotification.sh
launchctl load -w com.gdi3d.battery.full.notification.plist

echo "Installation complete! 😀"

trap echo "Installation Failed 😞\r\n\nTry open a ticket at: https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new and paste the output of this screen into the ticket"