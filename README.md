# dotfiles
My setup for bash, vim and tmux

## Setup

1. Clone this repo

   `$ git clone https://github.com/akshaysubr/dotfiles.git`

2. Set up symlinks to the dotfiles

   ```
   ln -s ${DOTFILES}/.zshrc ~/.zshrc
   ln -s ${DOTFILES}/nvim ~/.config/nvim
   ln -s ${DOTFILES}/.shell_prompt.sh ~/.shell_prompt.sh
   ln -s ${DOTFILES}/.tmux.conf ~/.tmux.conf
   ln -s ${DOTFILES}/.tmuxline_snapshot.conf ~/.tmuxline_snapshot.conf
   ln -s ${DOTFILES}/yabai ~/.config/yabai
   ln -s ${DOTFILES}/skhd ~/.config/skhd
   ln -s ${DOTFILES}/kitty ~/.config/kitty
   ```
   where `${DOTFILES}` is the path to this repository

## Set up oh-my-zsh on mac

### Change the default shell to zsh
```
chsh -s /bin/zsh
```

### Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Instal plugins

1. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
2. [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
3. [zsh-z](https://github.com/agkozak/zsh-z)
```
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
```
4. [fzg](https://github.com/junegunn/fzf#installation)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
5. [fasd](https://github.com/clvv/fasd#install)
```
brew install fasd
```
6. [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)
```
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
```

### Install neovim

```
brew install neovim
```

Install [packer](https://github.com/wbthomason/packer.nvim)
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open the packer config file
```
nvim ~/.config/nvim/lua/custom/packer.lua
```
and install all packages using
```
:PackerSync
```
and update treesitter using
```
:TSUpdate
```
