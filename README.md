# Personal Dotfiles for GitHub Codespaces

This repository contains personal configuration files that are automatically applied to new GitHub Codespaces.

## Contents

- `.bashrc` - Custom bash aliases and configurations
- `install.sh` - Installation script (automatically run by Codespaces)

## Aliases

- `rxn` - Quick shortcut to start React Native app (`cd /workspaces/web/src/frontend/reactNativeApp && yarn start`)

## Setup

1. Create a new repository called `dotfiles` on GitHub
2. Push these files to that repository
3. Go to GitHub Settings → Codespaces → Dotfiles
4. Enable "Automatically install dotfiles" and select your dotfiles repository