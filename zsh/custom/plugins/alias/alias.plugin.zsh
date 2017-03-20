alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

if whence trash-put > /dev/null; then
	alias tp="trash-put"
fi

lias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
