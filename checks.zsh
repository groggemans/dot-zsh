##############################################################################
# @file checks.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

if [[ "$(uname)" == "Linux" ]]; then
    IS_LINUX=1
fi

if [[ "$(uname)" == "Darwin" ]]; then
    IS_MAC=1
fi

command -v brew >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
    HAS_BREW=1
fi

command -v apt-get >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
    HAS_APT=1
fi

command -v yum >/dev/null 2>&1
if [[ "$?" -eq 0 ]]; then
    HAS_YUM=1
fi

##############################################################################
