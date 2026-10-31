#! /bin/bash

ln -s $(pwd)/git/gitconfig ~/.gitconfig.common
if [ -f ~/.gitconfig ]; then
  if ! grep -qF "path = ./.gitconfig.common" ~/.gitconfig; then
    printf '\n[include]\n\tpath = ./.gitconfig.common\n' >> ~/.gitconfig
  fi
else
  printf '\n[include]\n\tpath = ./.gitconfig.common\n' >> ~/.gitconfig
fi
ln -s $(pwd)/vim/vimrc ~/.vimrc
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
