# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ------------------- Work stuff -------------------
# NPM_TOKEN
export NPM_TOKEN="editme"
# GitLab access key for autostore components library
export GITLAB_ACCESS_KEY="editme"
# Disable overlay for qubit
export VITE_DISABLE_OVERLAY=true


# ------------------- History -------------------
# Individual history per tab
unsetopt inc_append_history
unsetopt share_history
# Set a unique history file for each session
export HISTFILE=~/.cache/zsh_history/.zsh_history_$$


# ------------------- Misc options -------------------
# Add to `PATH` which determines where the system looks for executable file
export PATH="/usr/local/sbin:$PATH"

# Set VSCode as default editor for terminal commands
export EDITOR='code'
export VISUAL='code'

# Don't update the terminal title
DISABLE_AUTO_TITLE="true"

# Set the native zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"


# ------------------- Powerlevel10k -------------------
# Load powerlevel10k config. To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
# Load the powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme


# ------------------- Load installed plugins -------------------
# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zoxide (better cd)
eval "$(zoxide init zsh)"

# zsh completions (primarily for git checkout tab completions)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# ------------------- Aliases -------------------
alias c='clear'
alias ll='ls -la'

# eza (better ls)
alias ls='eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'

# zoxide
alias cd="z"

# ------------------- Git aliases -------------------
alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit --message'
alias gcam='git commit --amend -m'
alias gcane='git commit --amend --no-edit'
alias gl='git log'
alias glo='git log --oneline --decorate'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gs='git status'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gfa='git fetch --all'
alias gfp='git fetch --all && git pull'
alias gp='git push -u origin'
alias gpf='git push -f'
alias grm='git rebase main'
alias grc='git rebase --continue'
alias grs='git restore --staged'
alias grhh='git reset --hard HEAD'
alias grh='f() { git reset HEAD~$1 };f'
alias gcp='git cherry-pick'


# ------------------- NVM -------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
