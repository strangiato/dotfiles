# # Enable plugins.
# plugins=(git brew history oc history-substring-search)

# Load tab complete
autoload -Uz compinit && compinit

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

# Load the starship terminal theme
eval "$(starship init zsh)"

# Load auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Pipenv configuration
export PIPENV_VENV_IN_PROJECT=1
