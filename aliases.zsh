##############################################################################
# @file aliases.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# ls aliases
#
    # Linux versions (--color for colored output)
    if [[ $IS_LINUX -eq 1 ]]; then
        alias ls='ls -GFh --color'
        alias la='ls -al --color'
    fi

    # Mac versions
    if [[ $IS_MAC -eq 1 ]]; then
        alias ls='ls -GFh'
        alias la='ls -al'
    fi

##############################################################################
