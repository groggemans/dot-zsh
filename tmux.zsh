##############################################################################
# @file tmux.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Check if Tmux is available
if which tmux >/dev/null 2>&1; then
    # If not running interactively, do nothing
    if [[ $- != *i* ]]; then
        return;
    # Do not run tmux if already in tmux session
    elif [[ -z "$TMUX" ]]; then
        exec tmux -2    # Use 256 colors by default (should be fixed)
    fi
fi

##############################################################################
