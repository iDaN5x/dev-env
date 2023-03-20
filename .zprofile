# Enable brew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable PyEnv.
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'