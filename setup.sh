#!/bin/bash

# Array of files/folders to symlink
files=(".config/regolith3/Xresources" ".tmux.conf" ".zshrc")

for file in "${files[@]}"; do
  ln -sf "$HOME/.dotfiles/$file" "$HOME/$file"
done

echo "Dotfiles have been symlinked!"
