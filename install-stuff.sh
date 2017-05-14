echo '> installing stuff . . .'

### install software
sudo apt-get install -y i3blocks
sudo apt-get install -y feh
sudo apt-get install -y thunar

# sublime-text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

sudo apt-get install -y lxappearance
sudo apt-get install -y gnome-icon-theme

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y arc-theme

sudo apt-get update
sudo apt -y autoremove

### Install fonts
echo '> installing fonts . . .'
cp -r .fonts ~/

### i3 configuration
echo '> configuring i3 . . .'

cp -r i3 ~/.config/
cp -r i3blocks ~/.config/
cp -r .i3blocks ~/

cp .wallpaper.jpeg ~/

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Dark"

### done
echo '> done.'
