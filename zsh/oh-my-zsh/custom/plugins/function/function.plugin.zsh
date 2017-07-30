# Using pip to install packages inside conda environments.
cpip() {
	ERROR_MSG="Not in a conda environment."
	ERROR_MSG="$ERROR_MSG\nUse \`source activate ENV\`"
	ERROR_MSG="$ERROR_MSG to enter a conda environment."

	[ -z "$CONDA_DEFAULT_ENV" ] && echo "$ERROR_MSG" && return 1

	PIP="$CONDA_PREFIX/bin/pip"
	"$PIP" "$@"
}
