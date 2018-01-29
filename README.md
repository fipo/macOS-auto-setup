# macOS Auto Setup

The main purpose of this piece of code is to help me (and other developers) in the initial macOS setup for front-end development.

## What is the box?

The script will install the following:

* Xcode Command Line Tools
* [brew](https://brew.sh/)
* [coreutils](https://github.com/Homebrew/homebrew-core/blob/master/Formula/coreutils.rb)
* git
* .dotfiles system from [https://github.com/fipo/dotfiles](https://github.com/fipo/dotfiles), based on [this article](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
* prezto
* wget
* tmux
* yarn
* mongodb
* fzf
* vim
* [nvm](https://github.com/creationix/nvm)
* nodejs lts

Will ask you to install the node apps:
* npx
* create-react-app
* eslint
* firebase-tools
* flow-bin
* nodemon
* prettier
* serve
* tldr

Will ask you to install the cask apps:
* 1password
* alfred
* atom
* balsamiq-mockups
* bartender
* evernote
* firefox
* flux
* google-chrome
* hyperswitch
* istat-menus
* iterm2
* omnifocus
* plex-media-player
* postman
* rescuetime
* robo-3t54
* skitch
* skype
* spotify
* toggl
* tower
* transmission
* virtualbox
* virtualbox-extension-pack
* vlc

## Setup

There is no need to clone the repo, just execute:

`curl -L https://raw.githubusercontent.com/fipo/macOS-auto-setup/master/initial-setup.sh | /bin/bash`

---

this setup was inspired by @AkkeyLab's [mac-auto-setup](https://github.com/AkkeyLab/mac-auto-setup) project
