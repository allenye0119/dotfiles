#!/bin/sh

# zsh
ln -sfv ~/.dotfiles/zsh/zshrc ~/.zshrc

# tmux
ln -sfv ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# git
ln -sfv ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -sfv ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# vim
ln -sfv ~/.dotfiles/vim/vimrc ~/.vimrc
ln -sfv ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips

# R
ln -sfv ~/.dotfiles/R/Rprofile ~/.Rprofile

# ptpython
if [ ! -d ~/.ptpython ]; then
	mkdir ~/.ptpython
fi
ln -sfv ~/.dotfiles/ptpython/config.py ~/.ptpython/config.py

