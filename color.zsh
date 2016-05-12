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
