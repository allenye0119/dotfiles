#!/bin/sh

check_dir () {
	if [ ! -d $1 ]; then
		mkdir $1
	fi
}

link_file () {
	ln -sfv $1 $2
}

link_files () {
	for f in `ls $1`; do
		ln -sfv $1/$f $2/$f
	done
}

# zsh
link_file ~/.dotfiles/zsh/zshrc ~/.zshrc
link_files ~/.dotfiles/zsh/custom/plugins ~/.oh-my-zsh/custom/plugins

# tmux
link_file ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# tmuxinator
check_dir ~/.bin
link_file ~/.dotfiles/tmuxinator/tmuxinator.zsh ~/.bin/tmuxinator.zsh

check_dir ~/.tmuxinator
link_files ~/.dotfiles/tmuxinator/templates ~/.tmuxinator

# vim
check_dir ~/.vim
link_file ~/.dotfiles/vim/vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

check_dir ~/.vim/UltiSnips
link_files ~/.dotfiles/vim/UltiSnips ~/.vim/UltiSnips

check_dir ~/.vim/colors
link_file ~/.dotfiles/vim/colors/solarized.vim ~/.vim/colors/solarized.vim

# git
link_file ~/.dotfiles/git/gitconfig ~/.gitconfig
link_file ~/.dotfiles/git/gitignore_global ~/.gitignore_global

# R
link_file ~/.dotfiles/R/Rprofile ~/.Rprofile


# dircolors
link_file ~/.dotfiles/dir_colors/dircolors.256dark ~/.dir_colors

