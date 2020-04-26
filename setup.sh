
tmutil localsnapshot

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install mas git go dockutil
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

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chmod g-w,o-w /usr/local/share/zsh
chmod g-w,o-w /usr/local/share/zsh/site-functions

cd ~
git clone https://github.com/progrium/env.git Environ
cp ~/Environ/.zshrc ~/.zshrc
cp ~/Environ/.gitconfig ~/.gitconfig

defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write -globalDomain com.apple.trackpad.scaling -int 1
defaults write -globalDomain com.apple.trackpad.forceClick -int 0
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 0
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 1

osascript -e 'tell app "System Events" to restart'
