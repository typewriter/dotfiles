#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0);pwd)

case $(uname -s) in
  Linux)
    sudo apt update
    sudo apt install -y zsh tmux curl git
    curl -L https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb --output /var/tmp/nvim-linux64.deb
    sudo apt install -y /var/tmp/nvim-linux64.deb
    rm /var/tmp/nvim-linux64.deb
    if [ ! -d ~/.rbenv ]; then
      git clone https://github.com/rbenv/rbenv.git ~/.rbenv
      mkdir -p ~/.rbenv/plugins
      git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    fi
    if [ ! -d ~/.nodenv ]; then
      git clone https://github.com/nodenv/nodenv.git ~/.nodenv
      mkdir -p ~/.nodenv/plugins
      git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
    fi
    if [ ! -d ~/.goenv ]; then
      git clone https://github.com/syndbg/goenv.git ~/.goenv
    fi

    ;;
  Darwin)
    echo "tmux, nvim を手動で入れてね！ [Enter]"
    read
    if [ ! -d ~/.rbenv ]; then
      git clone https://github.com/rbenv/rbenv.git ~/.rbenv
      mkdir -p ~/.rbenv/plugins
      git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    fi
    if [ ! -d ~/.nodenv ]; then
      git clone https://github.com/nodenv/nodenv.git ~/.nodenv
      mkdir -p ~/.nodenv/plugins
      git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
    fi
    if [ ! -d ~/.goenv ]; then
      git clone https://github.com/syndbg/goenv.git ~/.goenv
    fi
    ;;
  *)
    # not supported
    ;;
esac

# zsh
echo "ZDOTDIR=\$HOME/.config/zsh" > ~/.zshenv

# Replace XDG_CONFIG_HOME
ln -sf ${SCRIPT_DIR}/.config $HOME/.config

