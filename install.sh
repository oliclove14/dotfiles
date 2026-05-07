#!/bin/bash
echo "🌸 Installing Jasmine's Rice..."

# Install packages
sudo pacman -S --noconfirm hyprland kitty fastfetch fish yazi btop rclone hypridle hyprlock

# Install AUR packages
yay -S --noconfirm aylurs-gtk-shell spotify-player cat-cursors-git

# Copy configs
cp -r .config/hypr ~/.config/
cp -r .config/kitty ~/.config/
cp -r .config/fastfetch ~/.config/
cp -r .config/fish ~/.config/
cp -r .config/ags ~/.config/
cp fastfetch1.jpg ~/Pictures/

# Set dark theme
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
gsettings set org.gnome.desktop.interface cursor-theme 'cat_cursors'

# Set fish as default shell
chsh -s /usr/bin/fish

echo "✦ Done! Reboot and enjoy your rice 🌸"
