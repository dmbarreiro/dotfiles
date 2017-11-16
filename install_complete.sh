#!/bin/sh

cp vimrc ~/.vimrc
cp plugins.vim ~/.plugins.vim
cp tmux.conf ~/.tmux.conf

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Configurations and plugin managers successfully installed."
