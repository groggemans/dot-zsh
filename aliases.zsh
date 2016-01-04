##############################################################################
# @file aliases.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# cd magic
alias ...='cd ../..'
alias ....='cd ../../..'

##############################################################################
# ls aliases

# Add color option for Linux
if [[ $IS_LINUX -eq 1 ]]; then
    alias ls='ls -GFh --color'
else
    alias ls='ls -GFh'
fi

alias lh='ls -d .*'
alias ll='ls -l'
alias la='ll -a'

##############################################################################
