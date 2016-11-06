##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Minimal ellipsis version
ELLIPSIS_VERSION_DEP='1.9.0'

# Package dependencies (informational/not used!)
ELLIPSIS_PKG_DEPS='groggemans/dot-shell'

##############################################################################

pkg.install() {
    # groggemans/shell package should be installed (rough check)
    ellipsis.list_packages | grep "$ELLIPSIS_PACKAGES/shell" 2>&1 > /dev/null
    if [ $? -ne 0 ]; then
        log.fail "Unmet dependency 'groggemans/dot-shell'"
        return 1
    fi
}

##############################################################################

pkg.link() {
    # Link files
    fs.link_file zshrc
    fs.ling_file zprofile

    # Link package into ~/.config/zsh
    mkdir -p "$ELLIPSIS_HOME/.config"
    fs.link_file "$PKG_PATH" "$ELLIPSIS_HOME/.config/zsh"
}

##############################################################################

pkg.unlink() {
    # Remove link in the config dir
    rm "$ELLIPSIS_HOME/.config/zsh"

    # Remove all links in the home folder
    hooks.unlink
}

##############################################################################

pkg.uninstall() {
    : # No action
}

##############################################################################
