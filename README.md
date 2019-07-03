# dotfiles
My setup for bash, vim and tmux

## Setup

1. Clone this repo

   `$ git clone https://github.com/akshaysubr/dotfiles.git`

2. Set up symlinks to the dotfiles

   ```
   $ ln -s ${DOTFILES}/.bashrc ~/.bashrc
   $ ln -s ${DOTFILES}/.vimrc ~/.vimrc
   $ ln -s ${DOTFILES}/.shell_prompt.sh ~/.shell_prompt.sh
   $ ln -s ${DOTFILES}/.tmux.conf ~/.tmux.conf
   $ ln -s ${DOTFILES}/.tmuxline_snapshot.conf ~/.tmuxline_snapshot.conf
   $ ln -s ${DOTFILES}/i3 ~/.config/i3
   $ ln -s ${DOTFILES}/termite ~/.config/termite
   $ ln -s ${DOTFILES}/compton ~/.config/compton
   $ ln -s ${DOTFILES}/.Xresources ~/.Xresources
   ```
   where `${DOTFILES}` is the path to this repository

3. Set up [Vundle](https://github.com/VundleVim/Vundle.vim):

   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

4. Install Plugins

   Launch `vim` and run `:PluginInstall`

5. Install Bundles

   Launch `vim` and run `:BundleInstall`

6. Enjoy using the plugins and customize as required

## Pre-requisites

1. Install [i3-gaps](https://github.com/akshaysubr/dotfiles/blob/master/i3/README.md)

2. [Powerline fonts](https://github.com/powerline/fonts)
