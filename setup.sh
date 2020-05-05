
tmutil localsnapshot

sudo softwareupdate --fetch-full-installer &

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chmod g-w,o-w /usr/local/share/zsh
chmod g-w,o-w /usr/local/share/zsh/site-functions

git clone https://github.com/progrium/env.git ~/Environ
source ~/Environ/state

state-defaults
state-dock
brew gem install pry

osascript -e 'tell app "System Events" to restart'
