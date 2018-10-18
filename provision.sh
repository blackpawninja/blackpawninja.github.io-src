#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "gem: --no-document" > ~/.gemrc

sudo apt-add-repository ppa:brightbox/ruby-ng --yes
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev ruby2.5 ruby2.5-dev --yes
sudo gem install bundler

cd /vagrant
bundle install
