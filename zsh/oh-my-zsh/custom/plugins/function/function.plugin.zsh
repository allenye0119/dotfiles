# Using pip to install packages inside conda environments.
cpip() {
	ERROR_MSG="Not in a conda environment."
	ERROR_MSG="$ERROR_MSG\nUse \`source activate ENV\`"
	ERROR_MSG="$ERROR_MSG to enter a conda environment."

	[ -z "$CONDA_DEFAULT_ENV" ] && echo "$ERROR_MSG" && return 1

	ERROR_MSG='Pip not installed in current conda environment.'
	ERROR_MSG="$ERROR_MSG\nUse \`conda install pip\`"
	ERROR_MSG="$ERROR_MSG to install pip in current conda environment."

	[ -e "$CONDA_PREFIX/bin/pip" ] || echo "$ERROR_MSG" && return 2

	PIP="$CONDA_PREFIX/bin/pip"
	"$PIP" "$@"
}
