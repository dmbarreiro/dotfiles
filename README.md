# dmbarreiro's dotfiles

Personal configuration files for development in Linux. Copied stuff from [Justin Donaldson](https://github.com/jdonaldson/dotfiles), [Gerhard Gappmeier](https://github.com/gergap/vim) and few shorcuts I found spread around the Internet. There is not much in here yet, since it is mainly intended to be simple as base for mastering tools like vim and tmux but it will probably grow over time.

## Manual Installation

Before installing anything I recomend you backup your current ~/.vimrc and ~/.tmux.conf files.

1. Clone this repository and execute installation bash script:

```bash
git clone git://github.com/dmbarreiro/dotfiles
sh dotfiles/install.sh
``` 

2. Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

```
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins
```

3. Install [vim-plug](https://github.com/junegunn/vim-plug):

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

That's it, you just have to install plugins using the plugin managers.

## Update configuration

Just pull the last version from the repository and execute again install.sh.
