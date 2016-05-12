#!/usr/bin/env bash
##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Install package
pkg.install() {
    : #TODO
}

##############################################################################

# Link package
pkg.link() {
    # Link files
    fs.link_file zshrc

    # Link package into ~/.config/zsh
    fs.link_file "$PKG_PATH" "$HOME/.config/zsh"
}

##############################################################################

# Unlink package
pkg.unlink() {
    : #TODO
}

##############################################################################

# Uninstall package
pkg.uninstall() {
    : #TODO
}

##############################################################################
