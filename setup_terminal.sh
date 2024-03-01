#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Download and install iTerm2
echo "Go to https://iterm2.com/ and download the latest version of iTerm2"

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download and install spaceship theme
echo "Installing spaceship theme"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
echo "ZSH_THEME=\"spaceship\"" >> ~/.zshrc
source ~/.zshrc
echo "SPACESHIP_TIME_SHOW=\"true\"" >> ~/.zshrc
echo "SPACESHIP_USER_SHOW=\"always\"" >> ~/.zshrc
echo "SPACESHIP_USER_COLOR=\"212\"" >> ~/.zshrc

# Add zsh plugins
echo "Adding zsh plugins"
echo "plugins=(git autojump zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
brew install zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
brew install zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
brew install autojump
echo "[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh" >> ~/.zshrc
source ~/.zshrc

# PATH in zshrc, avoid duplicates
export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

# Setup vim
echo "set number\nsyntax on\nset showmode\nset showcmd\nset mouse=a\nset autoindent" > ~/.vimrc
