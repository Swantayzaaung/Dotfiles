#!/usr/bin/bash

# neofetch
alias diofetch="neofetch --ascii /home/swan/Documents/dio --ascii_colors 3 6 6 7 7 7"

# pacman
alias yoink="sudo pacman -S"
alias yeet="sudo pacman -Rs"
alias updoot="sudo pacman -Syu"
alias sync="sudo pacman -Syyy"

# System aliases
alias enable="sudo systemctl enable --now"
alias disable="sudo systemctl disable --now"
alias custombash="vim ~/.bash_aliases"
alias reloadbash="source ~/.bashrc"
alias cd..="cd .."

# Tar archvies
alias mktar="tar cvzf"
alias untar="tar xvzf"

# GUI related stuff
alias init-i3="startx /usr/bin/i3 -c ~/.config/i3/config"
alias killgui="pkill -15 Xorg"
alias reloadx="xrdb ~/.Xresources"

# Config file editing
alias config-i3="vim ~/.config/i3/config"
alias config-ob="vim ~/.config/openbox/rc.xml"
alias config-poly="vim ~/.config/polybar/bars.ini"
alias config-poly-modules="vim ~/.config/polybar/modules.ini"
alias config-rofi="vim ~/.config/rofi/config.rasi"
alias config-picom="vim ~/.config/picom/picom.conf"
alias config-x="vim ~/.Xresources"
alias config-tint="vim ~/.config/tint2/tint2rc"

# Deter myself from distractions when studying
#alias deter='echo This is not time for distraction'
#alias init-i3='deter'
#alias startx='deter'
#alias lynx='deter'
#alias sudo='deter'
#alias pacman='deter'

# Useful aliases for showing status
alias showtime="watch -n0 timedatectl status"
alias showbattery="watch -n0 cat /sys/class/power_supply/CMB1/capacity"

# Miscellaneous
alias ttysolitaire="ttysolitaire --no-background-color"

# Functions
function compile {
	clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow    $1.c -lcrypt -lm -o $1
}
function aur-install {
	git clone https://aur.archlinux.org/$1.git
	cd $1
	makepkg -sic
	cd ..
	rm -rf $1
}
