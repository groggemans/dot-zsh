##############################################################################
# @file tmux.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# This function is used to start Tmux with the possibility to abort.
start_tmux() {
    echo "Press any key to start tmux..."
    read -s -n 1

    # Use 256 colors by default
    exec tmux -2
    # Do not perform useless loading
    exit $?
}

# Check if Tmux is available
if command -v tmux >/dev/null 2>&1; then
    # If not running interactively, do nothing
    if [[ $- != *i* ]]; then
        return;
    # Run Tmux if not already running
    elif [[ -z "$TMUX" ]]; then
        start_tmux
    fi
fi

##############################################################################
