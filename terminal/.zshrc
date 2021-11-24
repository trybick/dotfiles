[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ZSH="/Users/tim/.oh-my-zsh"
export EDITOR='code'
export VISUAL='code'

# ZSH options
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(
  git
  zsh-autosuggestions
  nvm
)

source $ZSH/oh-my-zsh.sh

# Syntax Highlighting plugin
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load Powerlevel10k config
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Individual history per tab
unsetopt inc_append_history
unsetopt share_history

# Aliases
alias c='clear'
alias ll='ls -la'
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit --message'
alias gcam='git commit --amend -m'
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
alias gp='git push'
alias gpo='git push origin'
alias grc='git rebase --continue'
alias grhh='git reset --hard HEAD'
alias gpf='git push -f'
alias grs='git restore --staged'
alias grh='f() { git reset HEAD~$1 };f'
export PATH="/usr/local/sbin:$PATH"