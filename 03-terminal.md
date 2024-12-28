# Terminal Setup

### Install iterm2

```terminal
brew install --cask iterm2
```

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

**Note on autosuggestions**: Make sure the "Black Bright" color in `iTerm → Preferences → Profiles → Colors` tab is not dark black or the suggestions will be invisible.

### Setup diff-so-fancy

```terminal
brew install diff-so-fancy

# Ensure settings in .gitconfig
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```

- Add options for different colors found on [their github](https://github.com/so-fancy/diff-so-fancy#improved-colors-for-the-highlighted-bits) or use my `.gitconfig`
