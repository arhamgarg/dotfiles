#!/usr/bin/env bash

# Clone the repository and navigate into the nnn directory
git clone --depth 1 https://github.com/jarun/nnn && cd nnn

# Uninstall any existing nnn installation
sudo make uninstall

# Build nnn with O_EMOJI=1 option
sudo make O_EMOJI=1

# Change ownership of the built binary to the current user
sudo chown "$USER" nnn

# Move the nnn binary to the local bin directory
mv nnn "$HOME/.local/bin/apps"

# Navigate back to the user's home directory
cd

# Clean up by removing the cloned nnn directory
rm -rf "$HOME/nnn"
