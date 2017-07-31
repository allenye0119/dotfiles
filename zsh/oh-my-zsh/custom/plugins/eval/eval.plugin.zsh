if whence dircolors > /dev/null; then
	eval "$(dircolors ~/.dir_colors/dircolors)"
fi

if whence direnv > /dev/null; then
	eval "$(direnv hook zsh)"
fi
