# zsh configuration
#export TERM="xterm-256color"

# Use zplug
source $ZSH_CONFIG/zplug.zsh

# Path settings
source $ZSH_CONFIG/path.zsh

# Aliases
source $ZSH_CONFIG/alias.zsh

# Functions
source $ZSH_CONFIG/func.zsh

# Variables
source $ZSH_CONFIG/vars.zsh

# Miscellaneous
source $ZSH_CONFIG/misc.zsh

# Private
if [ -f "$ZSH_CONFIG/private.zsh" ]; then
  source $ZSH_CONFIG/private.zsh
fi
