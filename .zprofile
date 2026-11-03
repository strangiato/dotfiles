# Add Homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Add brew packages to path
export PATH="/opt/homebrew/bin:$PATH"

# add make to path
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# Load add krew to path for oc/kubectl plugins
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
