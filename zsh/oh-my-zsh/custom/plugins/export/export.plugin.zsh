export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export SHELL=/bin/zsh
export EDITOR=vim
export TERM=screen-256color

export PATH=$PATH:~/bin:~/.local/bin:~/.local/lib

# nodejs
export PATH=~/.npm_global/bin:$PATH

# tiny-care-terminal
export TTC_BOTS=tinycarebot,selfcare_bot,magicrealismbot
export TTC_SAY_BOX=parrot
export TTC_REPOS=~/.dotfiles
export TTC_GITBOT=gitstandup
export TTC_WEATHER=Taipei
export TTC_APIKEYS=true
export TTC_CONSUMER_KEY=BYvxmDItUnEbE4OYxNiud1tKG
export TTC_CONSUMER_SECRET=RoCsCUmE3mkcXfAkLu5khP644akah8X4w9D35O7hEhv7hV27iW
export TTC_ACCESS_TOKEN=805277998932860928-3qYVvsRUhpX3DflXqWoFrl4ow56V8uT
export TTC_ACCESS_TOKEN_SECRET=RtcD3BcxC5fiHRxoA2C0wfrHzb2t4z9Er6InSzwFNZF8b

# virtualenvwrapper
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--python=/usr/bin/python3'
#export WORKON_HOME=~/.virtualenvs

# conda
export PATH=$PATH:~/miniconda3/bin

# cuda
export CUDA_HOME=/usr/local/cuda
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64

