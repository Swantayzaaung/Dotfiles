#!/usr/bin/bash

# variables 
editor=/usr/bin/vim

# neofetch
alias diofetch="neofetch --ascii /home/swan/docs/dio --ascii_colors 3 6 6 7 7 7"

# pacman
alias yoink="sudo pacman -S"
alias yeet="sudo pacman -Rs"
alias updoot="sudo pacman -Syu"
alias sync="sudo pacman -Syyy"

# System aliases
alias enable="sudo systemctl enable --now"
alias disable="sudo systemctl disable --now"

# Bash aliases
alias custombash="$editor ~/.bash_aliases"
alias reloadbash="source ~/.bashrc"
alias cd..="cd .."
alias ll="exa --long --header --git --group-directories-first --octal-permissions --no-permissions"
function md () { 
	mkdir $1
	cd $1
}

# Mounting drives
function mnt {
    mountpath=$(udisksctl mount -b $1 | awk '{print $4}')
    cd $mountpath
}
alias umnt="udisksctl unmount -b"

# Tar archvies
alias mktar="tar cvzf"
alias untar="tar xvzf"

# GUI related stuff
alias init-i3="startx /usr/bin/i3 -c ~/.config/i3/config"
alias killgui="pkill -15 Xorg"
alias reloadx="xrdb ~/.Xresources"

# Config file editing

alias config-i3="$editor ~/.config/i3/config"
alias config-ob="$editor~/.config/openbox/rc.xml"
alias config-poly="$editor ~/.config/polybar/bars.ini"
alias config-poly-modules="$editor ~/.config/polybar/modules.ini"
alias config-rofi="$editor ~/.config/rofi/config.rasi"
alias config-picom="$editor ~/.config/picom/picom.conf"
alias config-x="$editor ~/.Xresources"
alias config-tint="$editor ~/.config/tint2/tint2rc"

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
alias batstatus="echo $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}')"
    
# Gaming
alias ttysolitaire="ttysolitaire --no-background-color"
alias tlauncher="java -jar ~/download/TLauncher-2.8.jar"

# Functions
function make ()
{
    local args="";
    local invalid_args=0;
    for arg in "$@";
    do
        case "$arg" in
            *.c)
                arg=${arg%.c};
                invalid_args=1
            ;;
        esac;
        args="$args $arg";
    done;
    if [ $invalid_args -eq 1 ]; then
        echo "Did you mean 'make$args'?";
        return 1;
    fi;
    CC="clang" CFLAGS="-ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow" LDLIBS="-lcrypt -lcs50 -lm" command make -B $*
}

function aur-install {
	git clone https://aur.archlinux.org/$1.git
	cd $1
	makepkg -sic
	cd - 
	rm -rf $1
}

