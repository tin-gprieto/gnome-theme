# GNOME theme

Table of Contents

- [Terminal](#terminal)
  - [ZSH](#zsh)
  - [ZSH Theme](#zsh-theme)
  - [Color scheme](#color-scheme)
- [Themes](#themes)
- [Icons and cursors](#icons-and-cursors)
- [Extentions](#extentions)
- [GRUB](#grub)
- [Programs](#programs)
  - [SSH key](#ssh-key) 
  - [Programming](#programming)
  - [User Apps](#user-apps)
  - [Snap Store](#snap-store)

## Requirements

- APT - package manager
- GNOME version > 44.2

      sudo apt install gnome-tweaks gnome-extensions-app git curl rsync flatpak wget -y

- [MesloLGS Font](<https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf>)
 (recurired for powerlevel10k) (preferences - GNOME Terminal)

---------------------------------------------------------

## Terminal

### ZSH

        sudo apt install zsh -y
        chsh -s $(which zsh)

logout and open terminal:

        Select => (2)  Populate your ~/.zshrc with the configuration recommended by the system administrator and exit (you will need to edit the file by hand, if so desired).

### ZSH Theme

configuration file: ~/.zshrc

- [Ohmyzsh](https://github.com/ohmyzsh/ohmyzsh.git)

        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k.git)

        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

- [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)

        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

Add plugins

        cp terminal/.zshrc ~/

### [Gogh](https://gogh-co.github.io/Gogh/) - Color scheme

        sudo apt-get install dconf-cli uuid-runtime
        bash -c "$(wget -qO- https://git.io/vQgMr)"

---------------------------------------------------------

## Themes

### [TokyoNight Theme](<https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git>)

        mkdir ~/.themes
        rsync -av gtk-theme/themes/.themes ~
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/assets ~/.config/gtk-4.0
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk.css ~/.config/gtk-4.0
        ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
        sudo flatpak override --filesystem=$HOME/.themes
        sudo flatpak override --filesystem=xdg-config/gtk-4.0
        flatpak override --user --filesystem=xdg-config/gtk-4.0

(check)

        ls -al ~/.themes

### [Qogir theme](<https://github.com/vinceliuice/Qogir-theme>)

Requirements

    sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

Parameters

    -d, --dest DIR          Specify destination directory (Default: /home/vince/.themes)

    -n, --name NAME         Specify theme name (Default: Qogir)

    -t, --theme VARIANT     Specify theme primary color variant(s) [default|manjaro|ubuntu|all] (Default: blue color)

    -c, --color VARIANT     Specify theme color variant(s) [standard|light|dark] (Default: All variants)

    -i, --icon VARIANT      Specify logo icon on nautilus [default|manjaro|ubuntu|fedora|debian|arch|gnome|budgie|popos|gentoo|void|zorin|mxlinux|opensuse] (Default: mountain icon)

    -g, --gdm               Install GDM theme, this option need root user authority! please run this with sudo

    -l, --libadwaita        Install link to gtk4 config for theming libadwaita

    -r, --remove,
    -u, --uninstall         Uninstall/Remove installed themes

    --tweaks                Specify versions for tweaks [image|square|round] (options can mix use)
                          1. image:      Install with a background image on (Nautilus/Nemo)
                          2. square:     Install square window button like Windows 10
                          3. round:      Install rounded window and popup/menu version
                          
    -h, --help              Show help

Install

    sudo ./install.sh

---------------------------------------------------------

## Icons and cursors

### [Dracula Icon Pack](<https://github.com/m4thewz/dracula-icons.git>)

     git clone https://github.com/m4thewz/dracula-icons.git
     sudo mv dracula-icons /usr/share/icons/

### [Tela Icon Pack](<https://github.com/vinceliuice/Tela-icon-theme>)

    git clone https://github.com/vinceliuice/Tela-icon-theme
    sudo ./Tela-icon-theme/install.sh

### [WhiteSur Icon Theme](<https://github.com/vinceliuice/WhiteSur-icon-theme.git>)

    git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
    sudo ./WhiteSur-icon-theme/install.sh -a

### [Afterglor-cursors](https://github.com/yeyushengfan258/Afterglow-Cursors.git)

    git clone https://github.com/yeyushengfan258/Afterglow-Cursors.git 
    sudo ./Afterglow-Cursors/install.sh

---------------------------------------------------------

## Extentions

  - [CoverflowAltTab@palatis.blogspot.com](<https://github.com/dsheeler/CoverflowAltTab.git>)
  - [Vitals@CoreCoding.com](<https://github.com/corecoding/Vitals.git>)
  - [appindicatorsupport@rgcjonas.gmail.com](https://github.com/ubuntu/gnome-shell-extension-appindicator.git)
  - [blur-my-shell@aunetx](https://github.com/aunetx/blur-my-shell.git)
  - [dash-to-panel@jderose9.github.com](https://github.com/home-sweet-gnome/dash-to-panel.git)
  - [forge@jmmaranan.com](https://github.com/forge-ext/forge.git)
  - [gsconnect@andyholmes.github.io](https://github.com/GSConnect/gnome-shell-extension-gsconnect.git)
  - [just-perfection-desktop@just-perfection](https://gitlab.gnome.org/jrahmatzadeh/just-perfection.git)
  - [quick-settings-tweaks@qwreey](https://github.com/qwreey/quick-settings-tweaks.git)
  - [space-bar@luchrioh](https://github.com/christopher-l/space-bar)
  - [user-theme@gnome-shell-extensions.gcampax.github.com](https://gitlab.gnome.org/GNOME/gnome-shell-extensions)

Extras

  - [panel-corners@aunetx](https://github.com/aunetx/panel-corners.git)
  - [spotify-controller@koolskateguy89](https://github.com/koolskateguy89/gnome-shell-extension-spotify-controller)
  - [spotify-tray@esenliyim](https://github.com/esenliyim/sp-tray)

Install

        rsync -av gtk-theme/gnome-extensions/.local ~

(check)

        ls -al ~/.local/share/gnome-shell/extensions/

### gnome-shell-config

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

### [Grub Theme](https://github.com/vinceliuice/grub2-themes)

    -t, --theme     theme variant(s)          [tela|vimix|stylish|whitesur]       (default is tela)
    -i, --icon      icon variant(s)           [color|white|whitesur]              (default is color)
    -s, --screen    screen display variant(s) [1080p|2k|4k|ultrawide|ultrawide2k] (default is 1080p)
    -r, --remove    Remove theme              [tela|vimix|stylish|whitesur]       (must add theme name option, default is tela)
    -b, --boot      install theme into '/boot/grub' or '/boot/grub2'
    -g, --generate  do not install but generate theme into chosen directory       (must add your directory)
    -h, --help      Show this help

Default 

        sudo ./grub2-themes/install.sh -b -t vimix -i white

---------------------------------------------------------

## Programs

### SSH key 

        ssh-keygen -t ed25519 -C "your_email@example.com"
        eval "$(ssh-agent -s)"
        ssh-add ~/.ssh/id_ed25519
        cat ~/.ssh/id_ed25519.pub

Then select and copy the contents of the id_ed25519.pub file displayed in the terminal to your clipboard.

---------------------------------------------------------

### Programming

- C 

        sudo apt install make gcc nasm gdb build-essential libcriterion-dev gcc-multilib clang clang-format libbsd-dev libc6-dev linux-libc-dev -y

- python
  
        sudo apt install python3 python3-venv python3-pip -y

- rust

        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

- ruby

       sudo apt install ruby
  
- docker

Add Docker's official GPG key:

        sudo apt-get update
        sudo apt-get install ca-certificates curl
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc

Add the repository to Apt sources:

        echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update

Install the Docker packages

        sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Verify that the Docker Engine installation is successful by running the hello-world image.

        sudo docker run hello-world

- valgrind
  
        sudo apt install valgrind -y

- valgreen (valdrind improvement)
  
        pip3 install valgreen -y

- gdb-dashboard

        wget -P ~ https://git.io/.gdbinit
  
- QEMU

        sudo apt install seabios qemu-system-x86 -y

- Visual Studio Code

        sudo apt-get install wget gpg
        wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
        sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
        sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
        rm -f packages.microsoft.gpg

        sudo apt install apt-transport-https
        sudo apt update
        sudo apt install code

- Vim Plug --opcional

        sudo apt install vim
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  
---------------------------------------------------------

### User Apps

- htop
  
        sudo snap install htop

- neofetch
  
        sudo apt install neofetch -y

- LibreOffice

        sudo snap install libreoffice

- solaar (Logitech)

        sudo apt install solaar -y

- [mdless (visualizador de MarkDown )](<https://brettterpstra.com/2015/08/21/mdless-better-markdown-in-terminal/>) --opcional

        git clone https://github.com/rubygems/rubygems
        sudo ruby rubygems/setup.rb
        sudo gem install mdless 

### Snap Store

- **Image editors**: Gimp y Inkscape
- **Git manager**: GitKraken
- **Media**: VLC
- **File manager**: Nautilus

---------------------------------------------------------
