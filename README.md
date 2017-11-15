# dmbarreiro's dotfiles

Personal configuration files for development in Linux. Copied stuff from [Justin Donaldson](https://github.com/jdonaldson/dotfiles), [Gerhard Gappmeier](https://github.com/gergap/vim) and few shorcuts I found spread around the Internet. There is not much in here yet, since it is mainly intended to be simple as base for mastering tools like vim and tmux but it will probably grow over time.

## Manual Installation

Before installing anything I recomend you backup your current ~/.vim and ~/.tmux folders and
your ~/.vimrc and ~/.tmux.conf files.

1. Clone this repository in your home folder:

```bash
cd ~
git clone git://github.com/dmbarreiro/dotfiles
``` 

2. Add the following line in your ~/.vimrc:

```
source ~/.vim/vimrc
```

3. Add the following line in your ~/.tmux.conf:

```
source-file ~/.tmux/tmux.conf
```

That's it, you are done.
