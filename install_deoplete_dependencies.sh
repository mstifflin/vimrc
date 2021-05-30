#!/bin/zsh

# Deoplete dependency
if [[ $(pip3 list | grep pynvim) != "" ]]; then
  echo "pynvim already installed"
else
  pip3 install --user pynvim
fi

