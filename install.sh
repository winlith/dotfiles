#!/bin/bash

echo "Enabling Chaotic-AUR..."
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo echo "[chaotic-aur]" >>/etc/pacman.conf
sudo echo "Include = /etc/pacman.d/chaotic-mirrorlist" >>/etc/pacman.conf
sudo pacman -Syu
echo "Done!"

echo "Checking if yay is installed..."
if ! command -v git 2>&1 >/dev/null; then
    echo "Nope, yay not found, installing..."
    sudo pacman -S yay
    echo "Done!"
else
    echo "Yup, yay found."
fi

echo "Installing packages..."
yay -S uwsm zsh hyprland kitty neovim starship tofi waybar sddm simple-sddm-theme-2-git apple_cursor nautilus zen-browser-bin hyprnotify hyprlock hyprswitch hyprpaper hypridle polkit-gnome dbus
echo "Done!"

echo "Backing up and symlinking zsh config..."
mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/transient-prompt.zsh" "$HOME/.transient-prompt.zsh"
echo "Done!"

echo "Setting zsh as default shell..."
chsh -s /bin/zsh
echo "Done!"

for dir in */; do
    echo "Backing up and symlinking ${dir%/} config..."
    mv "$HOME/.config/${dir%/}" "$HOME/.config/${dir%/}.backup"
    ln -s "$PWD/${dir%/}" "$HOME/.config/${dir%/}"
    echo "Done!"
done

echo "Copying sddm config..."
sudo cp sddm.conf /etc/sddm.conf
sudo cp sddm-theme.conf.user /etc/sddm.conf.d/theme.conf.user
sudo cp sddm-hyprland.conf /usr/share/sddm/sddm-hyprland.conf
echo "Done!"

echo "Enabling sddm service..."
sudo systemctl enable sddm
echo "Done!"

echo "Boom, all done! Now start sddm or just reboot."
