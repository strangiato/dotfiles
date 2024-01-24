# # Enable plugins.
# plugins=(git brew history oc history-substring-search)

# Add brew packages to path
export PATH="/opt/homebrew/bin:$PATH"
# add make to path
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

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
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

# Load the starship terminal theme
eval "$(starship init zsh)"

# Load auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Pipenv configuration
export PIPENV_VENV_IN_PROJECT=1
