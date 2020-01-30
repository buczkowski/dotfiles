# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
HISTSIZE='5000'
HISTCONTROL='erasedups'

PS1="[\[\033[1;33m\]\u\[\033[0m\]@\[\033[1;31m\]\H\[\033[0m\]:\[\033[0;35m\]\W\[\033[0m\]]$ "

export EDITOR='vi'
export PAGER='less'

# Colors in Linux and Darwin
if [[ "$OSTYPE" == "linux"* ]]; then
	alias ls='ls --color=auto'
elif [[ "$OSTYPE" == "darwin"* ]]; then
	alias ls='ls -G'
fi

# block IP
blockip () { sudo /sbin/iptables -I INPUT -s "$*" -j DROP; }

# unblock IP
unblockip () { sudo /sbin/iptables -D INPUT -s "$*" -j DROP; }

# make java use GTK
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"

# lazy VASSAL
alias VASSAL='./Documents/Software/VASSAL-3.2.17/VASSAL.sh'
