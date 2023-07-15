---------------------------------------------------------
## Personalización propia

### Distribución

**Ubuntu**

-sudo apt install gnome-tweaks gnome-extensions-app git curl rsync -y

### Terminal

#### ZSH

        $ sudo apt install zsh -y
        $ chsh -s $(which zsh)
        
        Reiniciar sesión, abrir terminal y seleccionar:
        
        Seleccionar => (2)  Populate your ~/.zshrc with the configuration recommended by the system administrator and exit (you will need to edit the file by hand, if so desired).

#### ZSH Theme

Archivo de configuración: ~/.zshrc

- Ohmyzsh

        $ sudo apt install curl -y
        $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

- MesloLGS Font

https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
(Setearla desde preferencias - GNOME Terminal)

- Powerlevel10k

        $ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

        $ nvim ~/.zshrc 
        
        ZSH_THEME="powerlevel10k/powerlevel10k"

- Autosuggestions

        $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

- zsh-syntax-highlighting

        $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

- Add plugins

        $ cp .zshrc ~/

#### Terminal theme

        $ sudo apt-get install dconf-cli uuid-runtime
        $ bash -c "$(wget -qO- https://git.io/vQgMr)"
        

#### Plugins

- python
        $ sudo apt install python3 python3-venv python3-pip

- valdrind
        $ sudo apt install valgrind

- valgreen (reversión de valdrind)
        $ pip3 install valgreen

- htop
        $ sudo snap install htop

- neofetch
        $ sudo apt install neofetch

- mdless --opcional (visualizador de MarkDown ) (https://brettterpstra.com/2015/08/21/mdless-better-markdown-in-terminal/)

        $ sudo apt install ruby
        $ git clone https://github.com/rubygems/rubygems
        $ cd rubygems
        $ sudo ruby setup.rb
        $ sudo gem install mdless 

- Vim Plug --opcional
        $ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

- LibreOffice

        $ sudo snap install libreoffice

-solaar (Logitech)

        $ sudo apt install solaar

### GTK Theme

#### TokyoNight Theme

-unzip gnome-44-gtk-theme

##### theme

        $ rsync -av themes/.themes ~
        (check) $ ls -al ~/.themes
        $ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/assets ~/.config/gtk-4.0
        $ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk.css ~/.config/gtk-4.0
        $ln -s ~/.themes/Tokyonight-Dark-BL/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
        $sudo flatpak override --filesystem=$HOME/.themes
        $sudo flatpak override --filesystem=xdg-config/gtk-4.0
        $flatpak override --user --filesystem=xdg-config/gtk-4.0

##### extentions
        
        $rsync -av gnome-extensions/.local ~
        (check) $ls -al ~/.local/share/gnome-shell/extensions/

##### gnome-shell-config

        $cd gnome-shell-config
        $dconf load /org/gnome/desktop/ < org-gnome-desktop.conf
        $dconf load /org/gnome/shell/ < org-gnome-shell.conf

#### Tela Icon Pack

        $ git clone https://github.com/vinceliuice/Tela-icon-theme
        $ cd Tela-icon-theme
        $ sudo ./install.sh

#### Dracula Icon Pack

        $ git clone https://github.com/m4thewz/dracula-icons.git
        $ sudo mv dracula-icons /usr/share/icons/

#### Afterglor-cursors

        $ git clone https://github.com/yeyushengfan258/Afterglow-Cursors.git 
        $ cd Afterglow-Cursors
        $ sudo ./install.sh

#### findex --opcional (buscador de aplicaciones)
        
        $ sudo apt install libkeybinder-3.0-dev
        $ sudo apt-get install libgtk-3-dev
        $ git clone https://github.com/mdgaziur/findex
        $ ./installer.sh

        Añadir al arranque (command: findex)


### GRUB
#### Grub Customizer

        $ sudo add-apt-repository ppa:danielrichter2007/grub-customizer
        $ sudo apt update
        $ sudo apt-get install grub-customizer

#### Grub Theme

        $ git clone https://github.com/vinceliuice/grub2-themes
        $ cd grub2-themes/
        $ sudo ./install.sh -b -t vimix -i white

#### Configuración

En Grub Customizer: 

- Resolución: 1366x768x8

### Programas (snap store)

- **Editor de texto**: Visual Studio Code
- **Browser**: Firefox
- **Editores de imágen**: Gimp y Inkscape
- **Git**: GitKraken
- **Reproductor de media**: VLC
- **Gestor de archivos**: Nautilus

---------------------------------------------------------
