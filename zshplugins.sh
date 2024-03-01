#/bin/bash

# Download and install spaceship theme
echo "Installing spaceship theme"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Add zsh plugins
echo "Adding zsh plugins"
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install autojump

# Add thefuck
echo "Adding thefuck and alias to fff for sfw use"
brew install thefuck

# Copy zshrc
echo "Backing up zshrc, if you lose it, you can find it in ~/.zshrc.bak"
cp ~/.zshrc ~/.zshrc.bak
echo "Copying zshrc"
cp files/.zshrc ~/.zshrc
echo "Sourcing zshrc"
source ~/.zshrc
