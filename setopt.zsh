##############################################################################
# @file setopt.zsh
# @date May, 2015
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2015, All Rights Reserved
# @license MIT
##############################################################################

# Vi bindings
bindkey -v

##############################################################################
# Changing directories

setopt auto_cd              # Use dir names as cd command aliases if possible
setopt pushd_ignore_dups    # Do not keep duplicates on the dir stack

##############################################################################
# Completion

setopt always_to_end        # Jump to end of word after completion
setopt auto_name_dirs       # Auto transform absolute paths to named ones
setopt complete_aliases     # Handle aliases as distinct commands
setopt complete_in_word     # Don't put cursor at the back while completing
setopt no_menu_complete     # Do not cycle trough options with tab

##############################################################################
# Expansion and globbing

setopt extended_glob        # Handle '#', '~' and '^' as part of pattern

##############################################################################
# History settings

setopt append_history       # Allow logs of different sessions in single file
setopt extended_history     # Also save timestamps and duration of commands
setopt hist_ignore_dups     # Do not log duplicate command input
setopt hist_ignore_space    # Ignore lines starting with a space
setopt hist_reduce_blanks   # Remove extra whitespace before storing in hist

HISTSIZE=1000               # History size
SAVEHIST=1000               # History size to save
HISTFILE=~/.zsh/zsh_history # History file

##############################################################################
# Initialization

# Defaults fine for now

##############################################################################
# Input/Output

setopt correct              # Enable command corrections
setopt correct_all          # Try to correct all arguments
setopt interactive_comments # Allow commands in interactive mode
setopt print_exit_value     # Print exit value if not 0

##############################################################################
# Job control

# Defaults fine for now

##############################################################################
# Prompting

setopt prompt_subst         # Expansion and substitution in prompt
setopt transient_rprompt    # Remove right prompt when accepting a command

##############################################################################
# Scripts and Functions

# Defaults fine for now

##############################################################################
# Shell emulation

# Defaults fine for now

##############################################################################
# Zshell line editor

setopt no_beep              # Disable beep

##############################################################################
