#!/bin/bash

# Install Xcode tools
xcode-select --install

# Install Homebrew if not installed
which brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install apps
brew bundle --file=~/dotfiles/Brewfile

# Symlink dotfiles
cd ~/dotfiles
stow zsh git cursor karabiner etc...

# macOS preferences (optional)
#./macos-settings.sh  # You can have this too, for defaults write commands

