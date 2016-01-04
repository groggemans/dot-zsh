##############################################################################
# @file zshrc
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

source ~/.zsh/tmux.zsh
source ~/.zsh/checks.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh


##############################################################################
# Local config

if [[ -f ~/.zshrc.local ]]; then
    source ~/.zshrc.local
fi


##############################################################################
# Secret config

if [[ -f ~/.secret/zsh/zshrc ]]; then
    source ~/.secret/zsh/zshrc
fi


##############################################################################
