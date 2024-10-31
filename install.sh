#!/bin/bash

# Path to Gitpod's default .zshrc
DEFAULT_ZSHRC="/home/gitpod/.zshrc"
# Path to your custom .zshrc in your dotfiles repo
CUSTOM_ZSHRC="/home/gitpod/.dotfiles/.zshrc"

# Check if custom .zshrc is already sourced in the default .zshrc
if ! grep -q "source $CUSTOM_ZSHRC" "$DEFAULT_ZSHRC"; then
  # Append a line to source the custom .zshrc if not already present
  echo "source $CUSTOM_ZSHRC" >> "$DEFAULT_ZSHRC"
  echo "Custom .zshrc sourced in Gitpod's default .zshrc"
else
  echo "Custom .zshrc already sourced."
fi