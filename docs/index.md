# Mac Battery Fully Charged Notification

This tiny script will check every 5 minutes your battery charge, and display a notification when it reaches 100%.

![Mac-Battery-Fully-Charged-Notification](https://raw.githubusercontent.com/gdi3d/osx-mac-notify-battery-fully-charge/main/docs/mac-battery-fully-charged-notification.png)

# Why the hell did you build this?

Because electricity is not cheap and sometimes I forget the laptop is charging. This will remind me about it.

# How does it work

The script has two parts:

1. The script itself `BatteryNotification.sh`
2. A `.plist` file to be added to setup a [launch agent](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/Introduction.html#//apple_ref/doc/id/10000172i-SW1-SW1) to allow the script to run automatically every 5 minutes.

The script will show you the notification only once when the charge is at 100% and then it will get reseted until the next charge.

# How to install

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

	```
	mkdir -p ~/BatteryNotification && cd ~/BatteryNotification && bash <( curl -s https://raw.githubusercontent.com/gdi3d/osx-mac-notify-battery-fully-charge/main/install.sh )
	```

3. If you see the message: `Installation complete! 😀` you can close the **Terminal** window. The is script is now running succesfully.

If you can't make it work, please [open a ticket](https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new) and I will help you with the process.

# How to disable the script

If you need to temporary disable the script: 

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

	```
	launchctl unload -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist
	```

3. If the command is successful you'll see no message. If something fails an error will be shown, in that case you can [open a ticket](https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new) and I will help you troubleshooting and fix the error.

# How to re-enable the script

If you have disabled the script and want to enable it again:

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

	```
	launchctl load -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist
	```

3. If the command is successful you'll see no message. If something fails an error will be shown, in that case you can [open a ticket](https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new) and I will help you troubleshooting and fix the error.

# How to Uninstall it

If you want to remove everything:

1. Open the application **Terminal**. Search it inside your **Applications** folder or using **Spotlight** search **(cmd+space bar)** and type **terminal.app**
2. Inside that white window (that’s the terminal app) paste this command and then hit Enter

	```
	launchctl unload -w ~/BatteryNotification/com.gdi3d.battery.full.notification.plist && rm -Rf ~/BatteryNotification
	```

3. If the command is successful you'll see no message. If something fails an error will be shown, in that case you can [open a ticket](https://github.com/gdi3d/osx-mac-notify-battery-fully-charge/issues/new) and I will help you troubleshooting and fix the error.

# Known Issues

When you update your OS the service will de-register itself. This means that you will have to register the service again.

To register it again follow the steps indicates above on the [How to re-enable the script Section](#How-to-re-enable-the-script)


# Repository

Here's the repo if you want to know more:
[https://github.com/gdi3d/osx-mac-notify-battery-fully-charge](https://github.com/gdi3d/osx-mac-notify-battery-fully-charge)

# Need help?

Contact me [on my LinkedIn](https://www.linkedin.com/in/adrianogalello/), feel free to send me a message.u
