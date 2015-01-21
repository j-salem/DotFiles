# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific env and startup programs

shopt -s checkwinsize

# Uncomment these to access gnu coreutils by original names (Mac specific)
PATH=$PATH:$HOME/bin #:/usr/local/opt/coreutils/libexec/gnubin
#MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export PATH
export MANPATH

#export TERM="xterm-256color"

if [ "$TERM" != "dumb" ]; then
        export LS_OPTIONS='--color=always'
		if [[ "$OSTYPE" == "darwin"* ]]; then
			eval `gdircolors ~/.dir_colors`
		elif [[ "$OSTYPE" == "linux-gnu" ]]; then
			eval `dircolors ~/.dir_colors`
		fi
fi

# ntensity        0       1       2       3       4       5       6       7
# Normal        Black   Red     Green   Yellow  Blue    Magenta Cyan    White
# Bright        Black   Red     Green   Yellow  Blue    Magenta Cyan    White


function PROMPT()
{
        local black=$(tput setaf 0)
        local red=$(tput setaf 1)
        local green=$(tput setaf 2)
        local yellow=$(tput setaf 3)
        local blue=$(tput setaf 4)
        local purple=$(tput setaf 5)
        local cyan=$(tput setaf 6)
        local white=$(tput setaf 7)
        local reset=$(tput sgr0)
        
        # Define PS1
        export PS1="\[$cyan\][\[$white\]\t\[$cyan\]] \[$yellow\]\u\[$white\]@\[$green\]\H\[$white\]: \w \[$reset\]\\$ "
}
PROMPT
