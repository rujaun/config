#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim
COLORTERM=truecolor

alias ls='ls --color=auto'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '

# Only for plasma:
#alias rbm='kbuildsycoca5'


alias pythonv='python -m venv env'
alias pythonva='source env/bin/activate'

export PY_USER_BIN=$(python3 -c 'import site; print(site.USER_BASE + "/bin")')
export PATH=$PY_USER_BIN:$PATH
