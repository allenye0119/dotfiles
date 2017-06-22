alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

if whence trash-put > /dev/null; then
	alias tp="trash-put"
fi

alias python="python3.6"
alias pip="pip3.6"
alias ipy="python3.6 -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
