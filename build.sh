#!/usr/bin/env bash
echo "Installing Homebrew, a good OS X package manager ..."
  /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
  brew update
sudo easy_install pep8
brew install ack macvim ctags git imagemagick
brew upgrade
mkdir ~/Applications
brew linkapps
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
/Users/alexkroman/.rvm/bin/rvm install 1.9.3
rvm use 1.9.3 --default
curl -Lo- http://bit.ly/janus-bootstrap | bash
cp ~/.vimrc.after ~/
