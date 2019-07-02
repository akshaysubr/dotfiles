# Installing i3-gaps

  * Download and extract a release version of the source code from https://github.com/Airblader/i3/releases

  * Install dependencies and then compile and install i3-gaps. Instructions here: https://github.com/Airblader/i3/wiki/Building-from-source

  * Install [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen) using the [installer-scripts](https://github.com/UtkarshVerma/installer-scripts)
  
  * Set the wallpaper using `betterlockscreen -u </path/to/wallpaper.png>`
  
  * Install [playerctl](https://github.com/acrisci/playerctl/releases)
  
  * Install [rofi](https://github.com/davatorium/rofi) using `sudo apt-get install rofi`
  
  * Install [Font-Awesome](https://github.com/FortAwesome/Font-Awesome) using `sudo apt-get install fonts-font-awesome`
  
  * Install i3blocks using `sudo apt-get install i3blocks`.
    This might overwrite i3-gaps, so go back to the i3-gaps build directory and do `make -j && sudo make install` to restore i3-gaps.
  
  * Install `compton` using `sudo apt-get install compton`
  
  * [Optional] Install `termite` using these [instructions](https://computingforgeeks.com/install-termite-terminal-on-ubuntu-18-04-ubuntu-16-04-lts/)
  
  * [Optional] Install `pavucontrol` using `sudo apt-get install pavucontrol` to get audio control GUI.
  
  * [Optional] Install `lxappearance` using `sudo apt-get install lxappearance` to get GUI to set GTK themes.
  
  * [Optional] Install `arandr` using `sudo apt-get install arandr` to get a GUI frontend to `xrandr`.
