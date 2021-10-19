# To use zplug as a plugin manager, ensure the following two lines are not
# commented out.
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

# Let zplug manage itself
#zplug "zplug/zplug", hook-build:"zplug --self-manage"

# Use 256 colors when possible
zplug "chrissicool/zsh-256color"

# Remind me if a command and parameters has an alias for it
zplug "djui/alias-tips"

# Use plugins from oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh

# Use the powerlevel9k theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# Fuzzy completion
zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf

# Enhance tab completion
zplug "zsh-users/zsh-completions"

# Enable syntax highlighting as commands are typed
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Search command history with substring matching
zplug "zsh-users/zsh-history-substring-search", defer:2

# Interactive autocompletion
zplug "zsh-users/zsh-autosuggestions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load
