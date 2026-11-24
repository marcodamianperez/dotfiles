#!/usr/bin/env bash
set -e

REPO="$HOME/dotfiles"

echo "Sincronizando configuraciones hacia $REPO..."

# 1. Crear estructura de carpetas en el repo
mkdir -p "$REPO/alacritty" \
         "$REPO/bash" \
         "$REPO/eza" \
         "$REPO/git" \
         "$REPO/micro" \
         "$REPO/tmux" \
         "$REPO/ulauncher"

# Bash
cp ~/.bashrc "$REPO/bash/"
cp ~/.bash_aliases "$REPO/bash/" 2>/dev/null || true

# Alacritty
cp ~/.config/alacritty/alacritty.toml "$REPO/alacritty/"
cp -r ~/.config/alacritty/themes "$REPO/alacritty/"


# 4. Eza (ajustá el nombre si usás theme.yml)
cp ~/.config/eza/theme.yml "$REPO/eza/" 2>/dev/null || true

# Git
cp ~/.config/git/config "$REPO/git/"

# Micro
cp ~/.config/micro/settings.json "$REPO/micro/" 2>/dev/null || true
cp ~/.config/micro/bindings.json "$REPO/micro/" 2>/dev/null || true
cp -r ~/.config/micro/colorschemes "$REPO/micro/"

# Tmux
cp ~/.config/tmux/tmux.conf "$REPO/tmux/"

# Ulauncher
mkdir -p "$REPO/ulauncher/user-themes/breeze-dark-ulauncher"

cp ~/.config/ulauncher/*.json "$REPO/ulauncher/" 2>/dev/null || true
cp ~/.config/ulauncher/user-themes/breeze-dark-ulauncher/manifest.json \
   ~/.config/ulauncher/user-themes/breeze-dark-ulauncher/theme.css \
   ~/.config/ulauncher/user-themes/breeze-dark-ulauncher/theme-gtk-3.20.css \
   "$REPO/ulauncher/user-themes/breeze-dark-ulauncher/" 2>/dev/null || true

echo "Sincronización completada"
