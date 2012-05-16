#!/usr/bin/env bash
curl -s https://raw.github.com/thoughtbot/laptop/master/mac
brew install macvim autoconf
mkdir ~/Applications
brew linkapps
source .bashrc
git clone git@github.com:alexkroman/dotfiles-thoughtbot.git
cd dotfiles-thoughtbot
./install.sh
brew install macvim --override-system-vim
chsh -s /bin/zsh
git remote add upstream git@github.com:thoughtbot/dotfiles.git
git fetch upstream
git checkout -b upstream upstream/master
git checkout upstream
git pull
git checkout master
git rebase upstream
./install.sh
rvm install 1.9.3
rvm use 1.9.3 --default
gem install rails heroku taps pg git_remote_branch foreman sinatra
rm ~/.vimrc
rm -rf ~/.vim
curl -Lo- http://bit.ly/janus-bootstrap | bash
cp ~/.vimrc.after ~/
# install iterm2
# install inconsolata
