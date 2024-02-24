#!/bin/zsh
set -euo pipefail

dotfiles_directory="$(cd "$(dirname "$0")"; pwd -P)"
ln -fs ${dotfiles_directory}/.zprofile ~/.zprofile
ln -fs ${dotfiles_directory}/.zshrc ~/.zshrc
ln -fs ${dotfiles_directory}/.gitconfig ~/.gitconfig
ln -fs ${dotfiles_directory}/.tigrc ~/.tigrc
