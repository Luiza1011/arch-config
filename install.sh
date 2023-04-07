#!/usr/bin/env sh
sudo pacman -S pacman-contrib polkit-gnome base-devel pamixer swaybg playerctl ffmpeg  rofi waybar nemo font-manager pavucontrol kitty cmus mc steam wine npm nodejs xdg-desktop-portal xdg-desktop-portal-wlr zsh grim slurp wf-recorder --noconfirm


git clone https://aur.archlinux.org/swayfx-git.git
cd swayfx-git
makepkg -si --noconfirm 
cd ..

git clone https://aur.archlinux.org/whatsdesk-bin.git
cd whatsdesk-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/wlr-randr.git
cd wlr-randr
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/azote.git
cd azote
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/nwg-look-bin.git
cd nwg-look-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/pacmixer.git
cd pacmixer
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/swaylock-effects.git
cd swaylock-effects
makepkg -si --noconfirm
cd ..


git clone https://aur.archlinux.org/heroic-games-launcher-bin.git
cd heroic-games-launcher-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/pfetch-rs-bin.git
cd pfetch-rs-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/discordo-git.git
cd discordo-git 
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/joycond-nicman23-git.git
cd joycond-nicman23-git 
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/pkgbase/swappy-git
cd swappy-git 
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/packages/sway-interactive-screenshot
cd sway-interactive-screenshot
makepkg -si --noconfirm
cd ..

rm -rf swayfx-git/
rm -rf yay-bin/
rm -rf whatsdesk-bin/
rm -rf wlr-randr/
rm -rf azote/
rm -rf nwg-look-bin/
rm -rf pacmixer/
rm -rf swaylock-effects/
rm -rf heroic-games-launcher-bin/
rm -rf pfetch-rs-bin/
rm -rf discordo-git/
rm -rf joycond-nicman23/
rm -rf swappy-git/
rm -rf sway-interactive-screenshot/

rm -rf ~/.config/kitty/
cp -r ~/arch-config/symlinks/kitty/ ~/.config/

rm -rf ~/.config/sway/
cp -r ~/arch-config/symlinks/sway/ ~/.config/

rm -rf ~/.config/swaync/
cp -r ~/arch-config/symlinks/swaync/ ~/.config/

rm -rf ~/.config/waybar/
cp -r ~/arch-config/symlinks/waybar/ ~/.config/

rm -rf ~/.zshrc
cp -r ~/arch-config/symlinks/.zshrc ~/

rm -rf ~/.config/fuzzel
cp -r ~/arch-config/symlinks/fuzzel/ ~/.config/

rm -rf ~/.fonts/
cp -r ~/arch-config/symlinks/.fonts/ ~/

sudo cp ~/arch-config/symlinks/swayblur.desktop /usr/share/wayland-sessions/


rm -rf ohmyzsh/
git clone https://github.com/ohmyzsh/ohmyzsh.git
cd ohmyzsh/tools/
sh install.sh
cd ..