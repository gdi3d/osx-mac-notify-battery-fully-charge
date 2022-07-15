# Mac Battery Fully Charged Notification

This tiny script will check every 5 minutes your battery charge, and  display notification when it reaches 100%.

# Why the hell did you build this?

Because electricity is not cheap and sometimes I forget the laptop is charging. This will remind me about it.

# How does it work

The script has two parts:

1. The script itself `BatteryNotification.sh`
2. A `.plist` file to be added to setup a [launch agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/Introduction.html#//apple_ref/doc/uid/10000172i-SW1-SW1) to allow the script to run automatically every 5 minutes.

The script will show you the notification only once when the charge is at 100% and then it will get reseted until the next charge.

# How to install

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

```
mkdir -p ~/BatteryNotification && cd ~/BatteryNotification && bash <( curl -s https://raw.githubusercontent.com/gdi3d/osx-mac-notify-battery-fully-charge/main/install.sh )
```

# How to disable the script

If you need to temporary disable the script: 

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

```
launchctl unload -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist
```

# How to re-enable the script

If you have disabled the script and want to enable it again:

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

```
launchctl load -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist
```

# How to Uninstall it

If you want to remove everything:

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

  ```
  launchctl unload -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist && rm -Rf ~/BatteryNotification
  ```
