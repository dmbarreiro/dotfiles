# dmbarreiro's dotfiles

Personal configuration files for development in Linux. Copied stuff from [Justin Donaldson](https://github.com/jdonaldson/dotfiles), [Gerhard Gappmeier](https://github.com/gergap/vim) and few shorcuts I found spread around the Internet. There is not much in here yet, since it is mainly intended to be simple as base for mastering tools like vim and tmux but it will probably grow over time.

## Installation

1. Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

```
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins
```

2. Install [vim-plug](https://github.com/junegunn/vim-plug):

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins using the plugin managers.

3. Clone this repository:

```
git clone git://github.com/dmbarreiro/dotfiles
```

4. Source repository configurations from your present configuration files:

.vimrc
```
source /path/dotfiles/vimrc
```

.tmux.conf
```
source-file /path/dotfiles/tmux.conf
```

.inputrc
```
$include /path/dotfiles/inputrc
```

## Update configuration

Just pull the last version from the repository and update
the plugins using the plugin manager.

## Language specific files

I am adding folders with language specific .vimrc files, if placed in project
folder these files will be automatically loaded with the specific options for 
the project language.

