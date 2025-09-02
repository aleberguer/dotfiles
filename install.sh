#!/bin/bash

# Dotfiles installation script for GitHub Codespaces
# This script will be automatically run when a new Codespace is created

echo "Setting up dotfiles..."

# Backup existing files if they exist
if [ -f ~/.bashrc ]; then
    echo "Backing up existing .bashrc"
    cp ~/.bashrc ~/.bashrc.backup
fi

# Source our custom .bashrc from the main .bashrc
if ! grep -q "source ~/dotfiles/.bashrc" ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# Source personal dotfiles" >> ~/.bashrc
    echo "if [ -f ~/dotfiles/.bashrc ]; then" >> ~/.bashrc
    echo "    source ~/dotfiles/.bashrc" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
    echo "Added dotfiles sourcing to ~/.bashrc"
fi

echo "Dotfiles setup complete!"