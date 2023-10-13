#!/usr/bin/env bash
reset

sudo apt install grub-customizer zsh gnome-tweaks gnome-extensions-app git curl rsync flatpak dconf-cli uuid-runtime  build-essential nasm gdb wget libcriterion-dev gcc-multilib python3 python3-venv python3-pip valgrind neofetch solaar -y
pip3 install valgreen -y
sudo snap install htop -y
wget -P ~ https://git.io/.gdbinit

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp terminal/.zshrc ~/

bash -c "$(wget -qO- https://git.io/vQgMr)"

git clone https://github.com/m4thewz/dracula-icons.git
sudo mv dracula-icons /usr/share/icons/
git clone https://github.com/vinceliuice/Tela-icon-theme
sudo ./Tela-icon-theme/install.sh
git clone https://github.com/yeyushengfan258/Afterglow-Cursors.git 
sudo ./Afterglow-Cursors/install.sh

rsync -av gtk-theme/themes/.themes ~
ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/assets ~/.config/gtk-4.0
ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk.css ~/.config/gtk-4.0
ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=xdg-config/gtk-4.0
flatpak override --user --filesystem=xdg-config/gtk-4.0
rsync -av gtk-theme/gnome-extensions/.local ~
dconf load /org/gnome/desktop/ < gtk-theme/gnome-shell-config/org-gnome-desktop.conf
dconf load /org/gnome/shell/ < gtk-theme/gnome-shell-config/org-gnome-shell.conf

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
git clone https://github.com/vinceliuice/grub2-themes
sudo ./grub2-themes/install.sh -b -t vimix -i white



