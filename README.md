# dmbarreiro's dotfiles

Personal configuration files for development in macOS. Copied stuff from [Justin Donaldson](https://github.com/jdonaldson/dotfiles), [Gerhard Gappmeier](https://github.com/gergap/vim). Mainly intended as a backup for my development environment.

## Pre-Installation

Some programs used in the configuration files need to be installed separately

pyenv
```
curl -s -S -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
```

Install [Iterm2](https://iterm2.com/).

Install [oh-my-zsh](https://ohmyz.sh/#install).

Install oh-my-zsh plugins
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Install [powerlevel10k](https://github.com/romkatv/powerlevel10k) zsh theme:

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Install [homebrew](https://brew.sh/)

Install vim and tmux:

```
brew install vim tmux
```

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

```
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins
```

Install [vim-plug](https://github.com/junegunn/vim-plug):

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins using the plugin manager. For [vim-plug](https://github.com/junegunn/vim-plug) open Vim and type `:PlugInstall`.

## Installation

1. Clone this repository:

```
git clone git://github.com/dmbarreiro/dotfiles
```

2. Copy repository configurations to your system:

Vim
```
copy <repository path>/plugins.vim ~/.plugins.vim
copy <repository path>/vimrc ~/.vimrc
```

Z shell
```
copy <repository path>/zshrc ~/.zshrc
```

Tmux
```
copy <repository path>/tmux.conf ~/.tmux.conf
```

.inputrc
```
copy <repository path>/inputrc ~/.inputrc
```

Instead of copying the files you can also source them from your original system files, I try to keep most
directory references relative to system variables (like $HOME for instance).

3. Source the copied configuration files in your terminal (Iterm presumably)

## Visual Studio Code settings

`vscode/` contains Visual Studio Code user seetings. Check the **README** file on that folder for more information.
