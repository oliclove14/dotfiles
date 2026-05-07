#!/bin/bash
echo "🌸 Installing miku's rice..."

# Install yay if not present
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    sudo pacman -S --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay && makepkg -si --noconfirm
    cd ~
fi

# Install base packages
echo "Installing packages..."
sudo pacman -S --noconfirm \
    hyprland kitty fastfetch fish \
    yazi btop rclone git wget curl \
    hypridle hyprlock \
    ttf-jetbrains-mono-nerd \
    nano ntfs-3g swww

# Install AUR packages
echo "Installing AUR packages..."
yay -S --noconfirm \
    aylurs-gtk-shell \
    spotify-player \
    cat-cursors-git

# Run end-4 dots installer
echo "Installing end-4 dots base..."
echo "⚠️  Follow the prompts, when it finishes come back here!"
bash <(curl -s https://ii.clsty.link/get)

# Create necessary folders
mkdir -p ~/Pictures
mkdir -p ~/.config

# Copy YOUR custom configs on top
echo "Applying your custom configs..."
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
cp -rf $DOTFILES_DIR/.config/hypr ~/.config/
cp -rf $DOTFILES_DIR/.config/kitty ~/.config/
cp -rf $DOTFILES_DIR/.config/fastfetch ~/.config/
cp -rf $DOTFILES_DIR/.config/fish ~/.config/
cp -rf $DOTFILES_DIR/.config/ags ~/.config/
cp -f $DOTFILES_DIR/fastfetch1.jpg ~/Pictures/

# Set fish as default shell
chsh -s /usr/bin/fish

# Set dark theme and cursor
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
gsettings set org.gnome.desktop.interface cursor-theme 'cat_cursors'

echo "✦ Done! Reboot and enjoy your rice 🌸"
