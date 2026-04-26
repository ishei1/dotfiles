#!/bin/bash

echo "=== Dotfiles Setup Starting ==="

CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config_backup_$(date +%s)"

mkdir -p "$BACKUP_DIR"

backup_and_copy() {
    FILE=$1

    if [ -e "$CONFIG_DIR/$FILE" ]; then
        echo "Backing up $FILE"
        mv "$CONFIG_DIR/$FILE" "$BACKUP_DIR/"
    fi

    echo "Applying $FILE"
    cp -r "$FILE" "$CONFIG_DIR/"
}

# install packages
if [ -f pkglist.txt ]; then
    echo "Installing packages..."
    sudo pacman -S --needed - < pkglist.txt
fi

# configs
backup_and_copy "gtk-3.0"
backup_and_copy "gtk-4.0"
backup_and_copy "autostart"

backup_and_copy "kdeglobals"
backup_and_copy "kwinrc"
backup_and_copy "plasmarc"
backup_and_copy "plasma-org.kde.plasma.desktop-appletsrc"
backup_and_copy "kcminputrc"

# shell config
if [ -f ~/.bashrc ]; then
    echo "Backing up .bashrc"
    mv ~/.bashrc ~/.bashrc.backup
fi

cp .bashrc ~

echo "=== Done ==="
echo "Backups stored in: $BACKUP_DIR"
echo "Restart KDE or reboot to apply changes"
