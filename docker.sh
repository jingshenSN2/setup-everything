#/bin/bash

# Install Docker(Podman)
echo "Installing Docker(Podman)"
brew install podman

# Start Docker(Podman)
podman machine init
podman machine start
