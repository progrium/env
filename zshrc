
export PATH="/usr/local/opt/ruby/bin:$PATH"
export ZSH="/Users/progrium/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git golang docker)

source $ZSH/oh-my-zsh.sh
source ~/Environ/state

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

reload() {
  source ~/.zshrc
}

erase-install() {
  /Applications/Install\ macOS*.app/Contents/Resources/startosinstall \
    --eraseinstall --agreetolicense --nointeraction --forcequitapps
}

recovery-reboot() {
  sudo nvram "recovery-boot-mode=unused"
  sudo reboot
}

recovery-unset() {
  sudo nvram -d recovery-boot-mode
}
