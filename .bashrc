# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
HISTSIZE='5000'
HISTCONTROL='erasedups'

PS1="[\[\033[1;33m\]\u\[\033[0m\]@\[\033[1;31m\]\h\[\033[0m\]:\[\033[0;34m\]\W\[\033[0m\]]$ "

export LANG=en_US.UTF-8
export EDITOR='vi'
export PAGER='less'

# Colors in Linux and Darwin
if [[ "$OSTYPE" == "linux"* ]]; then
	alias ls='ls --color=auto'
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias ls='ls -G'
fi

