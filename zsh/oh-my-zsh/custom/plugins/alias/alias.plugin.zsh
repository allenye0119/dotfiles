alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

if whence trash-put > /dev/null; then
	alias tp="trash-put"
fi

if whence tldr > /dev/null; then
	alias tldr="tldr -t ocean"
fi
