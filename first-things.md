# First Things

### Install command-line tools

```terminal
xcode-select --install
```

### Install Homebrew

```terminal
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install global homebrew packages

```terminal
brew install yarn wget
```

### Install nvm

https://github.com/nvm-sh/nvm#install--update-script

```terminal
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

### Install Docker

```terminal
brew install --cask docker
```

### Setup SSH

_Alternativley, use `ssh-keygen -o` to generate new key for github_

- Copy `~/.ssh` over
- Set permissions `chmod 600 ~/.ssh/*`
- Activate with `ssh-add ~/.ssh/*`
