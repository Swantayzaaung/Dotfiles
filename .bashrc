#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\[\033[0;36m\]\u@\h \W]\$ '
PS1='\[\033[01;35m\]\u@\h\[\033[01;34m\] \w \$ \[\033[00m\]'

# my stuff
source ~/.bash_aliases
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

SS=$HOME/Pictures/Screenshots
SS_WIN=/windows10/Users/*/Pictures/Screenshots
export EDITOR="/usr/bin/vim"
export XDG_CONFIG_HOME="/home/swan/.config"
