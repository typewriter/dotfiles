#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0);pwd)

echo "ZDOTDIR=\$HOME/.config/zsh" > ~/.zshenv
ln -sf ${SCRIPT_DIR}/.config $HOME/.config


