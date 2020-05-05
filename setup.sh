
tmutil localsnapshot

sudo softwareupdate --fetch-full-installer
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install mas git go dockutil ruby brew-gem
#brew install ffmpeg rust jq wget youtube-dl make python
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install spotify
brew cask install textmate
brew cask install vlc
brew cask install dropbox
brew cask install discord
brew cask install 1password
brew cask install docker
brew cask install unity-hub
brew cask install shiftit
#brew cask install adobe-creative-cloud

brew gem install pry

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chmod g-w,o-w /usr/local/share/zsh
chmod g-w,o-w /usr/local/share/zsh/site-functions

git clone https://github.com/progrium/env.git ~/Environ
source ~/Environ/state

state-defaults
state-dock

osascript -e 'tell app "System Events" to restart'
