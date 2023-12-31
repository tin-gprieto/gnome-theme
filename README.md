# GNOME theme (44.2 version) - Ubuntu 23.04

Table of Contents

- [Terminal](#terminal)
  - [ZSH](#zsh)
  - [ZSH Theme](#zsh-theme)
  - [Color scheme](#color-scheme)
- [GTK Theme](#gtk-theme)
- [GRUB](#grub)
- [Programs](#programs)

## Requirements

        sudo apt install gnome-tweaks gnome-extensions-app git curl rsync flatpak -y

---------------------------------------------------------

## Terminal

### ZSH

        sudo apt install zsh -y
        chsh -s $(which zsh)

logout and open terminal:

        Select => (2)  Populate your ~/.zshrc with the configuration recommended by the system administrator and exit (you will need to edit the file by hand, if so desired).

### ZSH Theme

configuration file: ~/.zshrc

- Ohmyzsh

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

- MesloLGS Font (recurired for powerlevel10k)

https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf

(preferences - GNOME Terminal)

- Powerlevel10k

        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

(en ~/.zshrc)

        ZSH_THEME="powerlevel10k/powerlevel10k"

- Autosuggestions

        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

- zsh-syntax-highlighting

        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

- Add plugins

        cp terminal/.zshrc ~/

### Color scheme

        sudo apt-get install dconf-cli uuid-runtime
        bash -c "$(wget -qO- https://git.io/vQgMr)"

---------------------------------------------------------

## GTK Theme

### Dracula Icon Pack (default)

(https://github.com/m4thewz/dracula-icons.git)

        git clone https://github.com/m4thewz/dracula-icons.git
        sudo mv dracula-icons /usr/share/icons/

### Tela Icon Pack

(https://github.com/vinceliuice/Tela-icon-theme)

        git clone https://github.com/vinceliuice/Tela-icon-theme
        sudo ./Tela-icon-theme/install.sh

### Afterglor-cursors

        git clone https://github.com/yeyushengfan258/Afterglow-Cursors.git 
        sudo ./Afterglow-Cursors/install.sh

### TokyoNight Theme

- theme
(https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git)

        rsync -av gtk-theme/themes/.themes ~
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/assets ~/.config/gtk-4.0
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk.css ~/.config/gtk-4.0
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
        sudo flatpak override --filesystem=$HOME/.themes
        sudo flatpak override --filesystem=xdg-config/gtk-4.0
        flatpak override --user --filesystem=xdg-config/gtk-4.0

(check)

        ls -al ~/.themes

- extentions

        rsync -av gtk-theme/gnome-extensions/.local ~

(check)

        ls -al ~/.local/share/gnome-shell/extensions/

- gnome-shell-config

        dconf load /org/gnome/desktop/ < gtk-theme/gnome-shell-config/org-gnome-desktop.conf
        dconf load /org/gnome/shell/ < gtk-theme/gnome-shell-config/org-gnome-shell.conf

### findex --opcional (searcher)

        sudo apt install libkeybinder-3.0-dev
        sudo apt-get install libgtk-3-dev
        git clone https://github.com/mdgaziur/findex
        sudo ./findex/installer.sh

        add to startup applications (command: findex)

### eww --opcional (conky alternative)

        --FALTA--

---------------------------------------------------------

## GRUB

### Grub Customizer

        sudo add-apt-repository ppa:danielrichter2007/grub-customizer
        sudo apt update
        sudo apt-get install grub-customizer

### Grub Theme

        git clone https://github.com/vinceliuice/grub2-themes
        sudo ./grub2-themes/install.sh -b -t vimix -i white

---------------------------------------------------------

## Programs

- C libs

        sudo apt install build-essential nasm gdb wget &&
        sudo apt install libcriterion-dev &&
        sudo apt install gcc-multilib -y

- python
  
        sudo apt install python3 python3-venv python3-pip -y

- valdrind
  
        sudo apt install valgrind -y

- valgreen (reversión de valdrind)
  
        pip3 install valgreen -y

- gdb-dashboard

        wget -P ~ https://git.io/.gdbinit 

- htop
  
        sudo snap install htop -y

- neofetch
  
        sudo apt install neofetch -y

- LibreOffice

        sudo snap install libreoffice -y

- solaar (Logitech)

        sudo apt install solaar -y

- mdless --opcional (visualizador de MarkDown ) (https://brettterpstra.com/2015/08/21/mdless-better-markdown-in-terminal/)

        sudo apt install ruby
        git clone https://github.com/rubygems/rubygems
        sudo ruby rubygems/setup.rb
        sudo gem install mdless 

- Vim Plug --opcional
  
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


### Snap Store

- **Text editor**: Visual Studio Code
- **Browser**: Firefox
- **Image editors**: Gimp y Inkscape
- **Git manager**: GitKraken
- **Media**: VLC
- **File manager**: Nautilus

---------------------------------------------------------
