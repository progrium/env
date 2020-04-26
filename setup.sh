
tmutil localsnapshot

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install mas git go ffmpeg rust jq wget youtube-dl make python
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
brew cask install adobe-creative-cloud

cd ~
git clone https://github.com/progrium/env.git Environ
cp ~/Environ/.zshrc ~/.zshrc
cp ~/Environ/.gitconfig ~/.gitconfig

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
compaudit | xargs chmod g-w,o-w

defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write -globalDomain com.apple.trackpad.scaling -int 1
defaults write -globalDomain com.apple.trackpad.forceClick -int 0
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -int 0
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -int 1
