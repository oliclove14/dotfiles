#!/bin/bash
echo "🌸 Setting up Jasmine's Rice..."

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
    hypridle hyprlock hyprpaper \
    ttf-jetbrains-mono-nerd \
    nano ntfs-3g swww

# Install AUR packages
echo "Installing AUR packages..."
yay -S --noconfirm \
    aylurs-gtk-shell \
    spotify-player \
    cat-cursors-git \
    fastfetch

# Run end-4 dots installer first
echo "Installing end-4 dots base..."
bash <(curl -s https://end-4.github.io/dots-hyprland-wiki/setup.sh)

# Now overwrite with YOUR custom configs
echo "Applying your custom configs..."
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

cp -r $DOTFILES_DIR/.config/hypr ~/.config/
cp -r $DOTFILES_DIR/.config/kitty ~/.config/
cp -r $DOTFILES_DIR/.config/fastfetch ~/.config/
cp -r $DOTFILES_DIR/.config/fish ~/.config/
cp -r $DOTFILES_DIR/.config/ags ~/.config/
cp $DOTFILES_DIR/fastfetch1.jpg ~/Pictures/

# Set fish as default shell
echo "Setting fish as default shell..."
chsh -s /usr/bin/fish

# Set dark theme
echo "Setting dark theme..."
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
gsettings set org.gnome.desktop.interface cursor-theme 'cat_cursors'

echo "✦ Done! Reboot and enjoy your rice 🌸"
echo "✦ Your dotfiles: https://github.com/oliclove14/dotfiles"
