#!/usr/bin/env bash

sudo apt-get update

#git
sudo apt-get install -y git
git config --global user.name "artross"
git config --global user.email "artross.bodhi@gmail.com"

#rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

#ruby-build & environment
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

#ruby
rbenv install 2.2.2
rbenv global 2.2.2

#rails
gem install rails

#Learn gem
gem install learn-co

#SQLite
sudo apt-get install -y sqlite3

