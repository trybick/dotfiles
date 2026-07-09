# Misc Settings

### Keyboard Speed

- "Key Repeat" = Fast
- "Delay Until Repeat" = Short

### Disable annoying shortcuts

- Disable `Cmd + M` shorctut
  - Go to System Preferences > Keyboard > Shortcuts > App Shortcuts
  - Click the Plus Button button below
  - Enter "Minimize"
  - Assign some bizzare key combination that you won't press by accident.
  - Repeat steps three and four for "Minimise" (alternate spelling) which is required for some apps.
  - Close the window to save the changes.
- Disable `Cmd + Q` shortcut
  - Set Cmd Q to something else under Mission Control section

### Force all folders to have the same view settings:

- Set the desired view
- Cmd + J to open view options
- Check top two options: "Always open" and "Browse"
- Click "Use as Defaults"
- Delete all `.DS_Store` files: `sudo find / -name .DS_Store -delete; killall Finder`

### Trackpad Settings

- Trackpad Preferences --> More Gestures --> Enable three finger swipe down for App Expose
- Trackpad Preferences --> Enable "Tap to click"
