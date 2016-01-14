##############################################################################
# @file exports.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

export PAGER='less'         # Pager
export EDITOR='vim'         # Editor
export VISUAL='vim'         # Visual editor

##############################################################################
# Locale

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

##############################################################################
# Users bin

if [[ -d "$HOME/bin" ]]; then
    export PATH=$PATH:~/bin
fi

##############################################################################
# Ellipsis

if [[ -d "$HOME/.ellipsis/bin" ]]; then
    export PATH=$PATH:~/.ellipsis/bin
fi

##############################################################################
# Dotfiles related exports

# Add dotfiles bin folder to path
if [[ -d "$HOME/.dotfiles/bin" ]]; then
    export PATH=$PATH:~/.dotfiles/bin
fi

##############################################################################
