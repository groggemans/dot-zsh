##############################################################################
# @file aliases.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Let aliases expand when using sudo. (space tells zsh to first expand)
alias sudo='sudo '

# clear
alias clr='clear'

# rm and nuke
alias rm='rm -i'
alias nuke='rm -rf'

# less with color
alias less='less -R'

# grep with color
alias grep='grep --color=auto'

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

# should be changed to functions to allow aditional params
alias lsl='ls|less'
alias lhl='lh|less'
alias lll='ll|less'
alias lal='la|less'

##############################################################################
# Ansible

# Test if ansible is installed
command -v ansible >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
    HAS_ANSIBLE=1
fi

# Faster ansible ussage
if [[ $HAS_ANSIBLE -eq 1 ]]; then
    alias galaxy='ansible-galaxy'
    alias play='ansible-playbook'
    alias playbook='ansible-playbook'
fi

# Faster source usage
if [[ -f "$HOME/ansible/hacking/env-setup" ]]; then
    alias src-ansible="source $HOME/ansible/hacking/env-setup"
elif [[ -f "$HOME/.ansible/hacking/env-setup" ]]; then
    alias src-ansible="source $HOME/.ansible/hacking/env-setup"
fi

##############################################################################
# OSX specific aliases

if [[ $IS_MAC -eq 1 ]]; then
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;
                    killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;
                    killall Finder /System/Library/CoreServices/Finder.app'
fi

##############################################################################
