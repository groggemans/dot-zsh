##############################################################################
# @file tmux.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Check if Tmux is available
if command -v tmux >/dev/null 2>&1; then
    # If not running interactively, do nothing
    if [[ $- != *i* ]]; then
        return;
    # Run tmux if not already running
    elif [[ -z "$TMUX" ]]; then
        # Use 256 colors by default
        exec tmux -2
        # Do not perform useless loading
        exit $?
    fi
fi

##############################################################################
