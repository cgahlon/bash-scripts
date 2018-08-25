# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
# I like my paths ahead of system paths.
#PATH=$PATH:$HOME/.local/bin:$HOME/bin
PATH=$HOME/.local/bin:$HOME/bin:$PATH

export PATH
