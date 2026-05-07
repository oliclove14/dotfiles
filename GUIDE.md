# 🌸 Installation Guide

## ✿ Requirements
- CachyOS (or any Arch-based distro)
- Internet connection
- A cup of tea 🍵

## ✿ How to install
```bash
git clone https://github.com/oliclove14/dotfiles && cd dotfiles && bash install.sh
```

## ✿ What happens
1. Installs yay (AUR helper)
2. Installs all required packages
3. Runs end-4 dots installer — **follow the prompts when asked!**
4. Once end-4 finishes, your custom configs get applied automatically
5. Reboot and enjoy 🌸

## ✿ After install
- Your wallpapers are in `~/.config/ags/assets/wallpapers/`
- To change wallpaper hover bottom center of screen
- Fastfetch shows on every terminal open
- Spotify player: run `spotify_player` in terminal

## ✿ Common issues

**Configs not applied?**
```bash
cd dotfiles && cp -rf .config/* ~/.config/
```

**Fastfetch showing ASCII instead of image?**
```bash
fastfetch --logo ~/pictures/fast1.jpg --logo-type kitty
```

**AGS/bar not showing?**
```bash
ags run
```

## ✿ Contact
Having issues? Contact me on Discord: **@silly_oli**

---
*made with 💗 by miku*
