# Mac Setup

This repo contains config files, like `.zshrc` and `.gitconfig`, as well as a guide for setting up a new Mac.

The [.zshrc](config/.zshrc) file features the powerlevel10k theme and git aliases.

### Redacted places to be filled in

- `.gitconfig` - user email
- `.zshrc` - npm token and gitlab access key

### Where to copy config files

| Repo file                 | Destination                          |
| ------------------------- | ------------------------------------ |
| `config/.zshrc`           | `~/.zshrc`                           |
| `config/.gitconfig`       | `~/.gitconfig`                       |
| `config/.p10k.zsh`        | `~/.p10k.zsh`                        |
| `config/ghostty.config`   | `~/.config/ghostty/config`           |
| `config/lazygit.config`   | `~/Library/Application Support/lazygit/config.yml` |
| `keyboard/karabiner.json` | `~/.config/karabiner/karabiner.json` |

---

## 1. First Things

### Install command-line tools

```terminal
xcode-select --install
```

### Install Homebrew

```terminal
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install homebrew packages

```terminal
brew install wget gh nvm
brew install --cask ghostty docker-desktop
```

### Setup SSH

_Alternatively, use `ssh-keygen -o` to generate new key for github_

- Copy `~/.ssh` over
- Set permissions `chmod 600 ~/.ssh/*`
- Activate with `ssh-add ~/.ssh/*`

---

## 2. Applications

### Programs

- Flux
- Brave
- Cursor
- Spark
- Slack
- Notion
- Spotify
- VLC
- Firefox
- Zoom
- Bluesnooze
- Trance Tuner
- Bitwarden

### Utilities

- BetterDisplay
- Mos
- Maccy
- Amphetamine
- Stay
- Logitech Options
- Karabiner

---

## 3. Terminal Setup

### Install a Nerd Font

SF Mono isn’t a Nerd Font, so install a symbols-only one and use it as a Ghostty fallback. That keeps SF Mono for text and fills in missing glyphs:

```terminal
brew install --cask font-symbols-only-nerd-font
```

In `~/.config/ghostty/config`:

```
font-family = SF Mono
font-family = Symbols Nerd Font Mono
```

Those icons show up in:
- **eza** (`ls`) — file/folder type icons in directory listings
- **powerlevel10k** — prompt glyphs (git branch, status, OS icon, etc.)

### Install power-level-10k theme

```terminal
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

### Install plugins/packages

```terminal
# zsh plugins
brew install zsh-autosuggestions zsh-syntax-highlighting zsh-completions

# better ls and cd and lazygit
brew install eza zoxide lazygit
```

### Setup diff-so-fancy

```terminal
brew install diff-so-fancy

# Ensure settings in .gitconfig
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```

- Add options for different colors found on [their github](https://github.com/so-fancy/diff-so-fancy#improved-colors-for-the-highlighted-bits) or use my `.gitconfig`

---

## 4. Misc Settings

### Night Shift

- Enabled from 12 AM to 11:59 PM (yes Night Shift and Flux both enabled)

### Keyboard Speed

- "Key Repeat" = Fast
- "Delay Until Repeat" = Short

### Disable annoying shortcuts

- Disable `Cmd + M` shortcut
  - Go to System Settings > Keyboard > Keyboard Shortcuts > App Shortcuts
  - Click the Plus button below
  - Enter "Minimize"
  - Assign some bizarre key combination that you won't press by accident.
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
