## export

# general
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export SHELL=/bin/zsh
export EDITOR=vim
export TERM=screen-256color

# conda
export PATH=$HOME/miniconda3/bin:$PATH

# yarn
export PATH=$HOME/.yarn/bin:$PATH

# cuda
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64
export PATH=$PATH:$CUDA_HOME/bin


## eval
if whence dircolors > /dev/null; then
	eval "$(dircolors ~/.dircolors)"
fi

if whence direnv > /dev/null; then
	eval "$(direnv hook zsh)"
fi


## alias

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


## function

# Using pip to install packages inside conda environments.
cpip() {
	ERROR_MSG="Not in a conda environment."
	ERROR_MSG="$ERROR_MSG\nUse \`source activate ENV\`"
	ERROR_MSG="$ERROR_MSG to enter a conda environment."

	[ -z "$CONDA_DEFAULT_ENV" ] && echo "$ERROR_MSG" && return 1

	ERROR_MSG='Pip not installed in current conda environment.'
	ERROR_MSG="$ERROR_MSG\nUse \`conda install pip\`"
	ERROR_MSG="$ERROR_MSG to install pip in current conda environment."

	[ -e "$CONDA_PREFIX/bin/pip" ] || (echo "$ERROR_MSG" && return 2)

	PIP="$CONDA_PREFIX/bin/pip"
	"$PIP" "$@"
}
