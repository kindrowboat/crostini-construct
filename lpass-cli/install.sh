#!/usr/bin/env bash
# copyright (c) 2018 S. Thomas Dunlap
# Released under MIT License (SPDX:MIT)

set -eu

sudo apt-get update
sudo apt-get install -y openssl libcurl4-openssl-dev libxml2 libssl1.0-dev libxml2-dev pinentry-curses xclip cmake build-essential pkg-config
cd /tmp
curl -sL https://github.com/lastpass/lastpass-cli/releases/download/v1.3.1/lastpass-cli-1.3.1.tar.gz > lastpass-cli-1.3.1.tar.gz
tar -xf lastpass-cli-1.3.1.tar.gz
cd lastpass-cli-1.3.1
make
sudo make install
mkdir -p $HOME/.config
