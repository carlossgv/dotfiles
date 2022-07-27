#!/bin/bash

ln -sf ~/dotfiles/lvim/config.lua ~/.config/lvim/config.lua
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
  ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
  ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
fi
