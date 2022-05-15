#! /usr/bin/env bash
DIR=$(pwd)

cp $HOME/.zshrc .
cp $HOME/.aliases .

cd $HOME/.config
cp -r --parent \
  nvim/lua/ \
  nvim/init.vim \
  i3/config \
  leftwm/config.toml \
  alacritty/alacritty.yml \
  rustfmt/rustfmt.toml \
  polybar/forest/config.ini \
  Code/User/settings.json \
  Code/User/keybindings.json \
  picom/picom.conf \
  starship.toml \
  $DIR/.config/
