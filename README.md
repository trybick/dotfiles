# dotfiles

## New Mac PC setup

* Install command-line tools: `xcode-select --install`
* Install Homebrew 
  * Paste in terminal:  
  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  * Once complete, ensure successful: `brew update && brew doctor`
* Install nvm/node  
  * `brew install nvm`
  * `mkdir ~/.nvm`
  * `nvm install node`

## Terminal setup

#### diff-so-fancy
https://github.com/so-fancy/diff-so-fancy  
* `brew install diff-so-fancy`
* Configure git to use globally: `git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"`
* Add options for different colors (found on their github)

#### git auto-completion
* `brew install bash-completion`

#### bash-git-prompt
* `brew install bash-git-prompt`

#### Terminal theme
* Install `solarized-dark` theme https://ethanschoonover.com/solarized/

## Mac OSX settings
* Disable `Cmd + M` shorctut
  * Go to System Preferences > Keyboard > Shortcuts > App Shortcuts
  * Click the Plus Button button below
  * Enter "Minimize" (use "Minimize All" to override minimizing all windows with ⌥⌘M) into the Menu Title text input field.
  * Assign some bizzare key combination that you won't press by accident.
  * Repeat steps three and four for "Minimise" (alternate spelling) which is required for some apps.
  * Close the window to save the changes.
