# Use emacs mode
set -o emacs

# Make commands get recorded to the history immediately.
setopt INC_APPEND_HISTORY

# Record command history with timestamp and duration.
setopt EXTENDED_HISTORY

# Configure thefuck
eval $(thefuck --alias)
