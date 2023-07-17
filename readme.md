## Script Description
The `toggle-audio-profile.sh` script is a Bash script that changes the audio profile configuration for a Bluetooth device in Ubuntu. It allows toggling between the "handsfree_head_unit" and "a2dp_sink" profiles for the connected Bluetooth device. This is useful when you want to switch between different audio modes, such as hands-free mode or high-quality audio playback mode.

The script uses the `pacmd` command to obtain information about audio devices and change the profile configuration. It works as follows:

1. Retrieves the index of the currently active audio device using the `pacmd list-sinks` command.
2. Extracts the device name corresponding to the found index.
3. Extracts the `device_id` and `current_config` from the device name.
4. Utilizes a `case` statement to determine the new profile (`new_config`) based on the current profile (`current_config`).
5. Uses the `pacmd set-card-profile` command to change the profile configuration for the Bluetooth device.
6. Displays confirmation messages indicating the configuration change.

## Configuring Keyboard Shortcut in Ubuntu

To configure the `toggle-audio-profile.sh` script as a custom keyboard shortcut in Ubuntu, follow these steps:

1. Open "System Settings" from the Ubuntu menu.
2. Navigate to the "Keyboard" section and select the "Keyboard Shortcuts" tab.
3. Click the "+" button at the bottom left to add a new shortcut.
4. In the popup dialog, enter the following details:
   - Name: Enter a descriptive name for the keyboard shortcut.
   - Command: Specify the absolute full path of the `toggle-audio-profile.sh` script. For example: `sh /path/to/fix-bluetooth-audio-ubuntu/toggle-audio-profile.sh`.
   - Shortcut: Press the desired key combination you want to use. For example, you can use `Ctrl + Alt + A`.
5. Click "Apply" to save the keyboard shortcut configuration.

From now on, when you press the configured key combination, the `toggle-audio-profile.sh` script will be executed, and it will change the audio profile configuration for the Bluetooth device.

Remember to adjust the path of the `toggle-audio-profile.sh` script in the keyboard shortcut configuration according to the actual location of the script on your system.

That's it! You now have a custom keyboard shortcut to easily change the Bluetooth audio profile configuration in Ubuntu using the `toggle-audio-profile.sh` script.
