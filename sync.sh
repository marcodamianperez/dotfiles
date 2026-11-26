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
         "$REPO/rofi"

# Bash
cp ~/.bashrc "$REPO/bash/"
cp ~/.bash_aliases "$REPO/bash/" 2>/dev/null || true

# Alacritty
cp ~/.config/alacritty/alacritty.toml "$REPO/alacritty/"
cp -r ~/.config/alacritty/themes "$REPO/alacritty/"


# Eza
cp ~/.config/eza/theme.yml "$REPO/eza/" 2>/dev/null || true

# Git
cp ~/.config/git/config "$REPO/git/"

# Micro
cp ~/.config/micro/settings.json "$REPO/micro/" 2>/dev/null || true
cp ~/.config/micro/bindings.json "$REPO/micro/" 2>/dev/null || true
cp -r ~/.config/micro/colorschemes "$REPO/micro/"

# Tmux
cp ~/.config/tmux/tmux.conf "$REPO/tmux/"

# Rofi
cp ~/.config/rofi/config.rasi "$REPO/rofi/"
cp ~/.config/rofi/tokyonight.rasi "$REPO/rofi/"

echo "Sincronización completada"
