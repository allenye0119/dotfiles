#!/bin/sh

# zsh
ln -sfv ~/.dotfiles/zsh/zshrc ~/.zshrc

# tmux
ln -sfv ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sfv ~/.dotfiles/tmux/tmux ~/.tmux
ln -sfv ~/.dotfiles/tmuxinator ~/.tmuxinator

# gitf
ln -sfv ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -sfv ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# vimf
ln -sfv ~/.dotfiles/vim/vim ~/.vim
ln -sfv ~/.dotfiles/vim/vimrc ~/.vimrc

# binf
# ln f-sv ~/.dotfiles/bin ~/bin

# R
ln -sfv ~/.dotfiles/R/Rprofile ~/.Rprofile
