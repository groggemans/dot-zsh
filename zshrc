##############################################################################
# @file zshrc
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

if [ ! -d ~/.config/shell ]; then
    echo "Could not find common shell files"
    exit
fi

# Helper functions used in the config
source ~/.config/shell/helpers.sh

# Exports
source ~/.config/shell/exports.sh

# Tmux stuff
source ~/.config/shell/tmux.sh

# Various checks
source ~/.config/shell/checks.sh

# Color
source ~/.config/shell/color.sh
source ~/.zsh/colors.zsh

# Zsh options
source ~/.zsh/setopt.zsh

# Prompt settings
source ~/.zsh/prompt.zsh

# Completion settings
source ~/.zsh/completion.zsh

# Aliases
source ~/.config/shell/aliases.sh

# Useful functions
source ~/.config/shell/functions.sh

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
