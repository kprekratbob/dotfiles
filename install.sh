#!/bin/bash

# Path to Gitpod's default .zshrc
DEFAULT_ZSHRC="/home/gitpod/.zshrc"
# Path to your custom .zshrc in your dotfiles repo
CUSTOM_ZSHRC="/home/gitpod/.dotfiles/.zshrc"

ZSH_THEME="simplerich"
source path/to/where_u_want_to_clone_the_repo/simplerich-zsh-theme/zsh-git-prompt/zshrc.sh

echo "🔍 Checking for Homebrew..."
if ! command -v brew &>/dev/null; then
    echo "🚨 Homebrew not found! Installing Homebrew..."
    NONINTERACTIVE=1 bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

echo "📦 Installing bind (for dig)..."
brew install bind

echo "✅ Setup complete!"

# Check if custom .zshrc is already sourced in the default .zshrc
if ! grep -q "source $CUSTOM_ZSHRC" "$DEFAULT_ZSHRC"; then
  # Append a line to source the custom .zshrc if not already present
  echo "source $CUSTOM_ZSHRC" >> "$DEFAULT_ZSHRC"
  echo "Custom .zshrc sourced in Gitpod's default .zshrc"
else
  echo "Custom .zshrc already sourced."
fi

git config --global push.default current