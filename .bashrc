

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

#rm -rf
rmrf () {
  rm -rf "$*"
}


alias la="ls -a"
alias c="clear"
alias game="cd ~/challenge/hep_C_cure/"
alias lsa="ls -la"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias vimcolors="cd ~/.vim/colors"
