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

- Install yarn globally

```terminal
brew install yarn
```

- Install global npm packages

```terminal
npm i -g sass electron tsc typescript
```

- Install wget

```terminal
brew install wget
```

## SSH

- Copy `~/.ssh` over
- Set permissions `chmod 600 ~/.ssh/*`
- Activate with `ssh-add ~/.ssh/*`

## Programs

- Google Chrome, VSCode, Slack, Docker, Evernote, Spotify, VLC, Trello, Firefox, FileZilla, Clipy, Amphetamine, Scroll Reverser, Logtitech Control Center, Karabiner

## Terminal

### iTerm2:

```terminal
brew cask install iterm2
```

### oh-my-zsh:

```terminal
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### power-level-10k theme:

```terminal
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Edit `~/.zshrc` and set as default theme: `ZSH_THEME="powerlevel10k/powerlevel10k"`

### zsh Auto Suggestions:

```terminal
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Add `zsh-autosuggestions` to plugins section of `~/.zshrc`

**Important**: Make sure the "Black Bright" color in `iTerm → Preferences → Profiles → Colors` tab is not dark black or the suggestions will be invisible.

### Syntax Highlighting

```terminal
brew install zsh-syntax-highlighting
```

Add to the end of `~/.zshrc`: `source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`

### diff-so-fancy

```terminal
https://github.com/so-fancy/diff-so-fancy
```

- Configure git to use globally: `git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"`
- Add options for different colors, found on their github, or use my `.gitconfig`

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
- "Touch Bar Shows" = Expanded Control Strip

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

### App Expose trackpad gesture

- Trackpad Preferences --> More Gestures --> Enable three finger swipe up for App Expose

### Logitech Control Center

- Remap Forward button to "App Expose"

## Misc

### Chrome extension "Stylish" style for Microsoft To Do

```terminal
.todayToolbar, #inbox, .sidebar-lastStaticList {
    display: none;
}
```
