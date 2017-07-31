alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

if whence trash-put > /dev/null; then
	alias tp="trash-put"
fi

alias python="python3"
alias pip="pip3"
alias ipy="python3 -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

alias tmux="direnv exec / tmux"
