

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


[[ -n "$DISPLAY" && "$TERM" = "xterm" ]] && export TERM=xterm-256color

# User specific aliases and functions
[[ -f /opt/mapr/conf/env.sh ]] && . /opt/mapr/conf/env.sh

#mkdir, cd into it
mkcd () {
  mkdir -p "$*"
  cd "$*"
}

alias la="ls -a"
alias c="clear"
alias lsa="ls -la"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias vimcolors="cd ~/.vim/colors"
