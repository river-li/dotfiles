#!/bin/zsh

# install homebrew and oh-my-zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install useful tools
brew install neovim
brew install zsh-autosuggestions zsh-syntax-highlighting zsh-vi-mode
brew install fzf
brew install joshuto

# dependency for neovim plugins
brew install fd
brew install chafa  # for telescope media support

cp -r nvim ~/.config/nvim
