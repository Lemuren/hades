#   #################################
#   #  _   _      ______     _____  #
#   # | | | |     |  _  \   /  ___| #
#   # | |_| | __ _| | | |___\ `--.  #
#   # |  _  |/ _` | | | / _ \`--. \ #
#   # | | | | (_| | |/ /  __/\__/ / #
#   # \_| |_/\__,_|___/ \___\____/  #
#   #                               #
#   #################################
#   #      Hannes Debian Setup      #
#   #            .bashrc            #
#   #################################


# Aliases.
alias ls='ls -hp --group-directories-first --color=auto'
alias grep='grep --color=auto'


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


PS1="\[$(tput setaf 9)\][\[$(tput setaf 166)\]\u\[$(tput setaf 11)\]@\[$(tput setaf 10)\]\H \[$(tput setaf 14)\]\w\[$(tput setaf 4)\]]\[$(tput setaf 15)\]$ "
unset color_prompt force_color_prompt
