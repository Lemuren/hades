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
#   #           .profile            #
#   #################################


# Environment variables.
export EDITOR=nvim
export BROWSER=firefox
export TERM=st-256
export TERMINAL=st-256
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Add private bin directory to the path.
export PATH=$HOME/.local/bin:$PATH

# Switch ESC and CAPS.
/usr/bin/setxkbmap -option "caps:swapescape"

# Start the X server.
exec startx
