# .bashrc

# To implement for just your user:
# overwrite exiting .bashrc: cp bashrc ~/.bashrc
# append to existing .bashrc: cat bashrc >> ~/.bashrc

# To implement for all users:
# overwrite exiting .bashrc: cp bashrc /etc/bashrc
# append to existing .bashrc: cat bashrc >> /etc/bashrc

# System-wide .bashrc file for interactive bash(1) shells.

# Uncomment the following line if you don't like systemctl's auto-paging "feature"
export SYSTEMD_PAGER=

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"
if [ -f ~/.git-completion.bash ];
  then . ~/.git-completion.bash
fi
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ll='ls -l'
alias l='ls -al'
#alias vboxmanage='VBoxManage'

#Path for my bins, groovy, pythong pip bins and others.
export PATH=~/bin:~/bin/groovy-2.4.11/bin:~/Library/Python/2.7/bin:$PATH
export PS1="\u@\h \W> "

# Found at: https://stackoverflow.com/questions/9457233/unlimited-bash-history
# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
