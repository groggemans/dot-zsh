##############################################################################
# @file completion.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

autoload -Uz compinit
autoload -U +X bashcompinit

bashcompinit
compinit

##############################################################################
#

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
if whence dircolors >/dev/null; then
    eval "$(dircolors -b)"
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
else
    export CLICOLOR=1
    zstyle ':completion:*:default' list-colors ''
fi
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

##############################################################################

if [ -f /usr/local/bin/terraform ]; then
    complete -C /usr/local/bin/terraform terraform
elif [ -f /usr/bin/terraform ]; then
    complete -C /usr/bin/terraform terraform
fi

if [ -f /usr/local/bin/consul ]; then
    complete -C /usr/local/bin/consul consul
elif [ -f /usr/bin/consul ]; then
    complete -C /usr/bin/consul consul
fi

if [ -f /usr/local/bin/vault ]; then
    complete -C /usr/local/bin/vault vault
elif [ -f /usr/bin/vault ]; then
    complete -C /usr/bin/vault vault
fi

if [ -f /usr/local/bin/nomad ]; then
    complete -C /usr/local/bin/nomad nomad
elif [ -f /usr/bin/nomad ]; then
    complete -C /usr/bin/nomad nomad
fi

if [ -f /usr/local/bin/packer ]; then
    complete -C /usr/local/bin/packer packer
elif [ -f /usr/bin/packer ]; then
    complete -C /usr/bin/packer packer
fi

##############################################################################
