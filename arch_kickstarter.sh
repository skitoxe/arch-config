#!/usr/bin/env bash
sudo pacman -Sy --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd -
sudo sed -i '/ParallelDownloads/s/^#//g' /etc/pacman.conf
sudo sed -i '/color/s/^#//g' /etc/pacman.conf
for word in $(cat yay-pkglist.txt); do yay -S --noconfirm --mflags --skipinteg $word || true; done
sudo pacman -Sy $(cat pacman-pkglist.txt | cut -d' ' -f1)
sudo pacman -Syu
sudo pacman -Qttdq | sudo pacman -Rns -
sudo systemctl enable --now paccache.timer
yay -Scc 
sudo reflector --latest 200 --sort rate --save /etc/pacman.d/mirrorlist
#chsh -s $(which zsh)
fc-cache -f -v
./cfg_dotfiles_kickstarter.sh
