#!/bin/bash

ln -sf ~/dotfiles/lvim/config.lua ~/.config/lvim/config.lua
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
  ln -sf ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json

elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
  ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  ln -sf ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
fi
