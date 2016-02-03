##############################################################################
# @file colors.zsh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Load colors
autoload colors && colors

for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval COLOR_RESET='%{$reset_color%}'

##############################################################################
# ls colors

export CLICOLOR=1

if [[ $IS_MAC -eq 1 ]]; then
    # OSX settings
    export LSCOLORS=Exfxcxdxbxegedabagacad
fi

if [[ $IS_LINUX -eq 1 ]]; then
    if [[ -x `which dircolors` ]]; then
        # Advanced setup for Linux
        eval $(dircolors -b $HOME/.zsh/ls_colors)
    else
        # Falback setup for linux
        export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:';
    fi
fi

##############################################################################
# grep colors

export GREP_COLOR='3;33'

##############################################################################
