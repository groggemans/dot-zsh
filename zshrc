##############################################################################
# @file zshrc
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

if [ ! -d ~/.config/shell ]; then
    echo "Could not find common files"
    exit
fi

source ~/.config/shell/helpers.sh
source ~/.config/shell/exports.sh
source ~/.config/shell/tmux.sh
source ~/.config/shell/checks.sh
source ~/.config/shell/colors.sh

source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh

source ~/.config/shell/aliases.zsh
source ~/.config/shell/functions.zsh

##############################################################################
# Local config

if [ -f ~/.local/zsh/zshrc ]; then
    source ~/.local/zsh/zshrc
fi

##############################################################################
# Secret config

if [ -f ~/.secret/zsh/zshrc ]; then
    source ~/.secret/zsh/zshrc
fi

##############################################################################
