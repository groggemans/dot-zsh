##############################################################################
# @file zshrc
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

SHELL_LIB="$HOME/.config/shell/lib"

if [ ! -d "$SHELL_LIB" ]; then
    echo "Could not find common shell files"
    return
fi

# Helper functions used in the config
source "$SHELL_LIB/helpers.sh"

# Exports
source "$SHELL_LIB/exports.sh"

# Tmux stuff
source "$SHELL_LIB/tmux.sh"

# Various checks
source "$SHELL_LIB/checks.sh"

# Color
source "$SHELL_LIB/color.sh"
source ~/.config/zsh/color.zsh

# Zsh options
source ~/.config/zsh/setopt.zsh

# Prompt settings
source ~/.config/zsh/prompt.zsh
source "$SHELL_LIB/prompt.sh"

# Completion settings
source ~/.config/zsh/completion.zsh

# Aliases
source "$SHELL_LIB/aliases.sh"

# Useful functions
source "$SHELL_LIB/functions.sh"

##############################################################################
# Secret config

if [ -f ~/.secret/zsh/zshrc ]; then
    source ~/.secret/zsh/zshrc
fi

##############################################################################
# Other config

if [ -d ~/.config/shell/source ]; then
    setopt null_glob
    for file in ~/.config/shell/source/*; do
        source "$file"
    done
    unsetopt null_glob
fi

##############################################################################
# Local config

if [ -f ~/.local/zsh/zshrc ]; then
    source ~/.local/zsh/zshrc
fi

##############################################################################
