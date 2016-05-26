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
    mkdir -p "$ELLIPSIS_HOME/.config"
    fs.link_file "$PKG_PATH" "$ELLIPSIS_HOME/.config/zsh"
}

##############################################################################

# Unlink package
pkg.unlink() {
    rm "$ELLIPSIS_HOME/.config/zsh"
}

##############################################################################

# Uninstall package
pkg.uninstall() {
    : #TODO
}

##############################################################################
