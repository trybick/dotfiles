# Misc Settings

### Night Shift

- Enabled from 12 AM to 11:59 PM

### Keyboard Speed

- "Key Repeat" = Fast
- "Delay Until Repeat" = Short

### Disable annoying shortcuts

- Disable `Cmd + M` shorctut
  - Go to System Preferences > Keyboard > Shortcuts > App Shortcuts
  - Click the Plus Button button below
  - Enter "Minimize" (use "Minimize All" to override minimizing all windows with ⌥⌘M) into the Menu Title text input field.
  - Assign some bizzare key combination that you won't press by accident.
  - Repeat steps three and four for "Minimise" (alternate spelling) which is required for some apps.
  - Close the window to save the changes.
- Disable `Cmd + Q` shortcut
  - Set Cmd Q to 'Application Windows' under Keyboard shortcuts

### Force all folders to have the same view settings:

- Set the desired view
- Cmd + J to open view options
- Check top two options: "Always open" and "Browse"
- Click "Use as Defaults"
- Delete all `.DS_Store` files: `sudo find / -name .DS_Store -delete; killall Finder`

### Trackpad Settings

- Trackpad Preferences --> More Gestures --> Enable three finger swipe down for App Expose
- Trackpad Preferences --> Enable "Tap to click"
