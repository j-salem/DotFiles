# .bashrc

# Customize for specific OS

LS_PROGRAM="ls"

case $OSTYPE in
	linux-gnu)
		# do Linux specific customizations
		;;
	darwin*)
		# Do Mac OSX specific customizations
		LS_PROGRAM="gls"
		;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
# Aliases
alias ls='$LS_PROGRAM $LS_OPTIONS -h'
alias ll='$LS_PROGRAM $LS_OPTIONS -lh'
alias la='$LS_PROGRAM $LS_OPTIONS -Ah'
alias l='$LS_PROGRAM $LS_OPTIONS -CFh'
alias svim='sudo vim'
alias h='cd'
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias cim='vim'
alias back='cd $OLDPWD'
alias root='sudo su'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'

# Env variables
export EDITOR=vim
