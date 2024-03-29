# New Mac Setup

## Basics

- Install command-line tools

```terminal
xcode-select --install
```

- Install Homebrew

```terminal
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- Install nvm/node (https://github.com/nvm-sh/nvm#install--update-script)

```terminal
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

- Install global homebrew packages

```terminal
brew install yarn wget
```

- Install Docker

```terminal
brew install --cask docker
```

## SSH

_Alternativley, use `ssh-keygen -o` to generate new key for github_

- Copy `~/.ssh` over
- Set permissions `chmod 600 ~/.ssh/*`
- Activate with `ssh-add ~/.ssh/*`

## Programs

_Tip: Use [macappps.link](https://macapps.link/en/) to download mulitple apps at once_

- Google Chrome, VSCode, Spark, Slack, Notion, Spotify, VLC, Firefox, Clipy, Amphetamine, Stay, Postman, Logtitech Control Center, Karabiner, Zoom, Bluesnooze, gifconvert, Trance Tuner

## Terminal

### iTerm2

```terminal
brew install --cask iterm2
```

### oh-my-zsh

```terminal
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### power-level-10k theme

```terminal
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Edit `~/.zshrc` and set as default theme: `ZSH_THEME="powerlevel10k/powerlevel10k"`

### zsh Auto Suggestions

```terminal
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add `zsh-autosuggestions` to plugins section of `~/.zshrc`

**Important**: Make sure the "Black Bright" color in `iTerm → Preferences → Profiles → Colors` tab is not dark black or the suggestions will be invisible.

### Syntax Highlighting

```terminal
brew install zsh-syntax-highlighting
```

Add to the end of `~/.zshrc`: `source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`

### diff-so-fancy

```terminal
brew install diff-so-fancy

# Configure git to use globally
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```

- Add options for different colors, found on [their github](https://github.com/so-fancy/diff-so-fancy#improved-colors-for-the-highlighted-bits), or use my `.gitconfig`

## Finder

- Force all folders to have the same view settings:
  - Set the desired view
  - Cmd + J to open view options
  - Check top two options: "Always open" and "Browse"
  - Click "Use as Defaults"
  - Delete all `.DS_Store` files: `sudo find / -name .DS_Store -delete; killall Finder`

## Display Preferences

- Night Shift enabled: 12 AM to 11:59 PM

## Keyboard Preferences

### Speed

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

## Mouse

### Trackpad Preferences

- Trackpad Preferences --> More Gestures --> Enable three finger swipe down for App Expose
- Trackpad Preferences --> Enable "Tap to click"

### Logitech Control Center

- Remap Forward button to "App Expose"

## Misc

### Disable power chime sound (sound when power is plugged in)

```terminal
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true
killall PowerChime
```
