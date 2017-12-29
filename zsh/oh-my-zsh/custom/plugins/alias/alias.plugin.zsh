alias cfgzsh="vim ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias cfgtmux="vim ~/.tmux.conf"
alias srctmux="tmux source ~/.tmux.conf"

if whence trash-put > /dev/null; then
	alias tp="trash-put"
fi

if whence tldr > /dev/null; then
	alias tldr="tldr -t ocean"
fi
