#!/bin/bash
cat << EOS
macOS Auto Setup - Cask Apps
EOS

echo "=== add cask apps ==="
brew cask install 1password
brew cask install alfred
brew cask install atom
brew cask install balsamiq-mockups
brew cask install bartender
brew cask install evernote
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install hyperswitch
brew cask install istat-menus
brew cask install iterm2
brew cask install omnifocus
brew cask install plex-media-player
brew cask install postman
brew cask install rescuetime
brew cask install robo-3t54
brew cask install skitch
brew cask install skype
brew cask install spotify
brew cask install toggl
brew cask install tower
brew cask install transmission
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vlc
echo "=== done ==="