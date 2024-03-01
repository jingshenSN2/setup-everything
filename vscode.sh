#/bin/bash

# Install Visual Studio Code
echo "Installing Visual Studio Code"
brew install --cask visual-studio-code

# Add code command to PATH
echo "[Manual Setting Warn] Go to Settings -> Features -> Command Palette (Cmd+Shift+P) and search for 'Shell Command: Install 'code' command in PATH'"
echo "Press Enter to continue"
read -n 1

# Disable Preview Editor
echo "[Manual Setting Warn] Go to Settings -> Workbench -> Editor Management and uncheck 'Enable Preview'"
echo "Press Enter to continue"
read -n 1

# Install Visual Studio Code extensions
echo "Installing Visual Studio Code extensions"
echo "Installing GitHub Copilot"
code --install-extension GitHub.copilot
echo "Installing Git Graph"
code --install-extension mhutchie.git-graph
echo "Installing Stardew Valley Theme"
code --install-extension zimo.stardew-valley-theme
