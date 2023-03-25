#!/usr/bin/env sh
cd
sudo pacman -Sl multilib

sudo pacman -S pacman-contrib polkit-gnome base-devel firefox pamixer playerctl swaybg playerctl v4l2loopback-dkms ffmpeg android-udev rofi waybar nemo font-manager pavucontrol kitty cmus mc steam wine spotifyd npm nodejs xdg-desktop-portal xdg-desktop-portal-wlr --noconfirm


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

git clone https://aur.archlinux.org/hyprshot.git
cd hyprshot
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/nwg-look-bin.git
cd nwg-look-bin
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/nwg-dock-bin.git
cd nwg-dock-bin
makepkg -si --noconfirm
cd ..


git clone https://aur.archlinux.org/spotifyd.git
cd spotifyd
makepkg -si --noconfirm
cd ..

git clone https://aur.archlinux.org/spotify-tui.git
cd spotify-tui
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

git clone https://aur.archlinux.org/spotify-tui.git
cd spotify-tui
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

rm -rf swayfx-git/
rm -rf yay-bin/
rm -rf whatsdesk-bin/
rm -rf wlr-randr/
rm -rf azote/
rm -rf hyprshot/
rm -rf nwg-look-bin/
rm -rf nwg-dock-bin/
rm -rf spotify/
rm -rf pacmixer/
rm -rf swaylock-effects/
rm -rf spotifyd
rm -rf spotify-tui/
rm -rf heroic-games-launcher-bin/
rm -rf pfetch-rs-bin/
rm -rf discordo-git/

rm -rf ohmyzsh/
git clone https://github.com/ohmyzsh/ohmyzsh.git
cd ohmyzsh/tools/
sh install.sh
cd

rm -rf ~/.config/kitty
rm -rf ~/.config/sway
rm -rf ~/.config/swaync
rm -rf ~/.config/waybar
rm -rf ~/.zshrc

ln -s ~/arch-config/kitty ~/.config/

ln -s ~/arch-config/sway ~/.config/

ln -s ~/arch-config/swaync ~/.config/

ln -s ~/arch-config/waybar ~/.config/

ln -s ~/arch-config/.zshrc ~/

wget https://github.com/bedrocklinux/bedrocklinux-userland/releases/download/0.7.28/bedrock-linux-0.7.28-x86_64.sh
