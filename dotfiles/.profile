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

# XDG directories and some commonly referenced environment variables.
export EDITOR=nvim
export BROWSER=firefox
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Clean up ~/.
export PYTHON_HISTORY=$XDG_STATE_HOME/python_history
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export HISTFILE="$XDG_STATE_HOME/bash_history"

# Add private bin directory to the path.
export PATH=$HOME/.local/bin:$PATH

# Start the X server.
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi
