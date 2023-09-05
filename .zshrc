# # Enable plugins.
# plugins=(git brew history oc history-substring-search)

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

# Load the starship terminal theme
eval "$(starship init zsh)"

# Load auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
