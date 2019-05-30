# Load nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

# Editor
export EDITOR='code --wait'
export VISUAL='code --wait'

# Aliases - general
alias c='clear'
alias ll='ls -la'

# Aliases - git
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit --message'
alias gl='git log'
alias glo='git log --oneline --decorate'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias glf="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gcane='git commit --amend --no-edit'
alias gfa='git fetch --all'
alias gfp='git fetch --all && git pull'
alias gba='git branch -avv'
alias gpo='git push origin'
