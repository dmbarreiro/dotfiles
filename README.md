# dmbarreiro's dotfiles

Personal configuration files for development in Linux. Copied stuff from [Justin Donaldson](https://github.com/jdonaldson/dotfiles), [Gerhard Gappmeier](https://github.com/gergap/vim) and few shorcuts I found spread around the Internet. There is not much in here yet, since it is mainly intended to be simple as base for mastering tools like vim and tmux but it will probably grow over time.

## Manual Installation

I recomend you backup your current ~/.vimrc and ~/.tmux.conf files before
starting the installation process.

Clone repository and execute installation script:

```bash
git clone git://github.com/dmbarreiro/dotfiles
sh dotfiles/install_complete.sh
``` 

Install plugins using the plugin managers.

## Manual Installation

I recomend you backup your current ~/.vimrc and ~/.tmux.conf files before
starting the installation process.

1. Clone this repository:

```
git clone git://github.com/dmbarreiro/dotfiles
``` 

2. Source repository configurations from your present configuration files:

.vimrc
``` 
source /path/dotfiles/vimrc
``` 

.tmux.conf
``` 
source-file /path/dotfiles/tmux.conf
``` 

3. Copy configuration files to their expected locations:

```bash
cp /path/dotfiles/plugins.vim ~/.plugins.vim
cp /path/dotfiles/inputrc ~/.inputrc
``` 

4. Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm):

```
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins
```

5. Install [vim-plug](https://github.com/junegunn/vim-plug):

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins using the plugin managers.

## Update configuration

Just pull the last version from the repository and execute the 
installation process.


