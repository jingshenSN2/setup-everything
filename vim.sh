#/bin/bash

# Copy vimrc
echo "Backing up vimrc, if you lose it, you can find it in ~/.vimrc.bak"
cp ~/.vimrc ~/.vimrc.bak
echo "Copying vimrc"
cp files/.vimrc ~/.vimrc
