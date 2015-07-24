#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. /etc/profile.d/vte.sh

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias vi="vim"
PS1='[\u@\h \W]\$ '

export GOPATH=~/work
export GOROOT=/usr/lib/go
export PATH=~/bin:$GOPATH/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
