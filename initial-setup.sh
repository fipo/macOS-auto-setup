#!/bin/bash
cat << EOS
macOS Auto Setup - Initial
EOS

read -sp "Your Password: " password;

echo "=== add Xcode Command Line Tools ==="
sudo xcodebuild -license accept
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
echo "=== done ==="

echo "=== add brew ==="
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew -v
echo "=== done ==="

echo "=== add brew:coreutils  ==="
brew install coreutils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
echo "=== done ==="

echo "=== add brew:git ==="
brew install git
git --version
echo "=== done ==="

echo "=== setup dot files ==="
mkdir -p $HOME/.ssh && touch $HOME/.ssh/known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
git clone --bare https://github.com/fipo/dotfiles.git $HOME/.cfg
$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME set-url origin git@github.com:fipo/dotfiles.git
echo "=== done ==="

echo "=== add prezto ==="
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
brew install zsh-autosuggestions
source $HOME/.zshrc
exit
echo "=== done ==="

echo "=== add brew:wget ==="
brew install wget
echo "=== done ==="

echo "=== add brew:tmux ==="
brew install tmux
echo "=== done ==="

echo "=== add brew:yarn ==="
brew install yarn
echo "=== done ==="

echo "=== add brew:mongodb ==="
brew install mongodb
brew services start mongodb
brew services list
echo "=== done ==="

echo "=== add brew:fzf ==="
brew install fzf
echo "=== done ==="

echo "=== add brew:vim ==="
brew install vim --with-override-system-vi
echo "=== done ==="

echo "=== add nvm ==="
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source $HOME/.zshrc
command -v nvm
echo "=== done ==="

echo "=== add node --lts ==="
nvm install --lts
nvm list
echo "=== done ==="

while true; do
  read -p 'Install Node Apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/node-apps.sh
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;


while true; do
  read -p 'Install Cask Apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/cask-apps.sh
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;
