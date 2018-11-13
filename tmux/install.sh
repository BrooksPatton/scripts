#!/bin/bash

echo "Installing Tmux"

if [ -f ~/.tmux.conf ]
then
  echo "error, tmux config file already exists, delete and try again"
else
  cp tmux.conf ~/.tmux.conf
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  echo "Tmux installed, next time you run it install the plugins with C-a I"
fi
