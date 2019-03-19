test -f ~/.bashrc && source ~/.bashrc

# Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export CLICOLOR=1

# Terminal prompt prefix
#export PS1="\w\033[32m\]\$(parse_git_branch)\[\033[00m\]
#$ "
export PS1="\[$(tput bold)\]\w\[$(tput sgr0)\] \$(parse_git_branch)\n$ "

# Bash auto-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Auto completion for aliases
__git_complete gco _git_checkout
__git_complete ga _git_add
__git_complete gd _git_diff

# Git Bash Prompt settings
GIT_PROMPT_ONLY_IN_REPO=0

GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules
GIT_PROMPT_WITH_VIRTUAL_ENV=0 # uncomment to avoid setting virtual environment infos for node/python/conda environments

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

#GIT_PROMPT_START=...      # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
# GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
#  GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme

# Git Bash Prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
 __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
 GIT_PROMPT_ONLY_IN_REPO=1
 source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
GIT_PROMPT_THEME=Chmike # Replace for theme setting


# Override theme defaults
#GIT_PROMPT_THEME_NAME="Chmike"
#GIT_PROMPT_BRANCH="${Green}"
#GIT_PROMPT_MASTER_BRANCH="${GIT_PROMPT_BRANCH}"
#GIT_PROMPT_REMOTE=" "
GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="✔"
GIT_PROMPT_SEPARATOR=""
GIT_PROMPT_CHANGED="${Cyan}"
GIT_PROMPT_STAGED="${Yellow}"
GIT_PROMPT_UNTRACKED="${Blue}"
GIT_PROMPT_CONFLICTS="${BoldRed}"
GIT_PROMPT_STASHED="${Magenta}"
GIT_PROMPT_CLEAN="${Green}"
GIT_PROMPT_COMMAND_OK="${Green}"
GIT_PROMPT_COMMAND_FAIL="${Red}"

GIT_PS1_SHOWDIRTYSTATE=false
