#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim

alias ls='ls --color=auto'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '


