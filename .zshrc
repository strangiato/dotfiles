# # Enable plugins.
# plugins=(git brew history oc history-substring-search)

#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY

# setup gpg signing
export GPG_TTY=$(tty)

# Load tab complete
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Load oc autocomplete
if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Load secrets file (if present), never checked into git
if [ -f ~/.zsh_secrets ]; then
    source ~/.zsh_secrets
fi

# Load the starship terminal theme
eval "$(starship init zsh)"

# Load auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Pipenv configuration
export PIPENV_VENV_IN_PROJECT=1

# configure uv to use corporate certs
export UV_SYSTEM_CERTS=true
