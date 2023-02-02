# dotfiles


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
7. [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
Nothing special needed to install except the formatters and linters you need. I install [black](https://github.com/psf/black) and [flake8](https://github.com/PyCQA/flake8) for python development.

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

