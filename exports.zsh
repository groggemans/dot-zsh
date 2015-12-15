##############################################################################
#
# @file exports.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
#
#   This script is free software: you can redistribute it and/or modify it
#   under the terms of the GNU Lesser General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or (at your
#   option) any later version.
#
#   This script is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
#   or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
#   License for more details.
#
#   You should have received a copy of the GNU Lesser General Public License
#   along with this script. If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
# General exports

# @TODO: Add exports (editor,...)

##############################################################################
# Dotfiles related exports

# Add dotfiles bin folder to path
if [[ -d "$HOME/.dotfiles/bin" ]]; then
    export PATH=$PATH:~/.dotfiles/bin
fi

# Source dotfiles version export
if [[ -f "$HOME/.dotfiles/version" ]]; then
    export DOTFILES=$(cat "$HOME/.dotfiles/version")
fi

##############################################################################
