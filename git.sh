#/bin/bash

# Set up git name & email
echo "What is your name?"
read name
git config --global user.name "$name"
echo "What is your email?"
read email
git config --global user.email "$email"

# Set up git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Set up git auto pull with rebase
git config --global pull.rebase true

# Set up git auto push setup remote
git config --global push.autoSetupRemote true
