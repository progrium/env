
export PATH="/usr/local/opt/ruby/bin:/Users/progrium/Go/bin:$PATH"
export ZSH="/Users/progrium/.oh-my-zsh"
export EDITOR="/usr/local/bin/code"
export GOPATH="/Users/progrium/Go"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git golang docker)

source $ZSH/oh-my-zsh.sh
source ~/Environ/state

export CDPATH=.:~:~/Source:~/Source/github.com:~/Source/github.com/progrium

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U add-zsh-hook
load-devrc() {
  if [[ -f .devrc && -r .devrc ]]; then
    source .devrc
  else
    if typeset -f devrc-unset > /dev/null; then
      devrc-unset
      unset -f devrc-unset
    fi
  fi
}
add-zsh-hook chpwd load-devrc

edit() {
  if [[ "$1" ]]; then
    $EDITOR $1
  else
    $EDITOR .
  fi
}

reload() {
  cd ~/Environ
  git pull --rebase origin master
  cd - > /dev/null
  source ~/.zshrc
}

preexec() {
  cmd=$1;
}

defaultcmd=ls
__firstcmd=
precmd() {
  if [[ "$cmd" ]]; then
    lastcmd=$cmd;
    cmd=;
    if [[ ! "$__firstcmd" ]]; then
      __firstcmd=true;
    fi
  else
    [[ $__firstcmd ]] && $defaultcmd
  fi
}

clone() {
  mkdir -p ~/Source/$1
  git clone http://$1 ~/Source/$1
  cd ~/Source/$1
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
