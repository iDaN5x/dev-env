# Manual Setup Instructions
> Instructions for manual setup.

## Enable fingerprint for root elevation in terminal
Run the following command in your terminal:
```bash
sudo sed -i.old '2s;^;auth sufficient pam_tid.so\n;' /etc/pam.d/sudo
```

To support this feature in iTerm2, you must set the following advanced configuration:
"Allow sessions to survive logging out and back in." => No

## Install Rosetta
Run the following command in your terminal:
```bash
softwareupdate --install-rosetta --agree-to-license
``` 

## Install Homebrew
Run the following command in your terminal:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Setup Git
Run the following commands in your terminal:
```bash
# Install latest git version using brew.
brew install git

# IMPROTANT! EDIT NAME AND EMAIL!!!
vim ~/.gitconfig
```

## Setup Shell
1. Setup ZSh by running the following commands:
   ```bash
   # Install Zsh.
   brew install zsh

   # Add ZSh to /etc/shells .
   ZSH_BIN="$(brew --prefix zsh)/bin/zsh"
   echo "$ZSH_BIN" >> /etc/shells

   # Set ZSh as the default macOS shell.
   chsh -s $ZSH_BIN $USER
   ```
2. Optional - setup OhMyZsh and plugins.  
   a. Run the following commands:
   ```bash
   # Install oh-my-zsh.
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

   # Install Zsh, Starship & OhMyZsh plugins.
   brew install \
       zsh-syntax-highlighting \
       zsh-autosuggestions

   # Copy default OhMyZsh .zshrc file template.
   cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
   ```
   b. Add the following to the end of your `~/.zshrc` file:
     ```bash
     ## List of OhMyZsh plugins to enable.
     plugins=(
       zsh-syntax-highlighting \
       zsh-autosuggestions
     )

     ## Enable oh-my-zsh
     source $ZSH/oh-my-zsh.sh
     ```
3. Optional - enable Starship.  
   a. Run the following command:
   ```bash
   # Install Starship.
   brew install starship
   ```
   b. Add the following to the end of your `~/.zshrc` file:
   ```bash
   ## Enable Starship.
   eval "$(starship init zsh)"
   ```

## Setup iTerm2
Run the following command:
```bash
# Install iTerm2
brew install --cask iterm2
```

## Setup Java
1. Run the following commands:
   ```bash
   # Install JEnv.
   brew install jenv 

   # Auto-export JAVA_HOME.
   jenv enable-plugin export

   # Install desired JDKs.
   brew install openjdk@17

   # Register JDKs with JEnv.
   jenv add $(brew --prefix openjdk@17)

   # Refresh JDKs list.
   jenv refresh-versions

   # Set global JDK as desired.
   jenv global 17

   # Enable automatic export of JAVA_HOME.
   jenv sh-enable-plugin export
   ```
2. Add the following to your `~/.zprofile` file:
   ```bash
   # Enable JEnv.
   export PATH="$HOME/.jenv/bin:$PATH"
   eval "$(jenv init -)"
   ```

## Setup Python
1. Run the following commands:
   ```bash
   # Install PyEnv
   brew install pyenv

   # Install global python version.
   export GLOBAL_PYTHON_VERSION="3.11.0"
   pyenv install $GLOBAL_PYTHON_VERSION
   pyenv global $GLOBAL_PYTHON_VERSION

   # Install poerty.
   curl -sSL https://install.python-poetry.org | python3 - --version=1.2.1

   # Enable poetry auto-completion in terminal.
   mkdir $ZSH_CUSTOM/plugins/poetry
   poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
   ```
2. Add the following to your `~/.zprofile` file:
   ```bash
   # Enable PyEnv.
   command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
   alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

   # Enable Poetry.
   export PATH="$HOME/.local/bin:$PATH"
   ```
3. Optional - add `poetry` OhMyZsh plugin to `~/.zshrc`.

## Setup NodeJs
1. Run the following commands:
   ```bash
   # Install NVM.
   brew install nvm
   mkdir ~/.nvm

   # Install and use global node version (lts).
   nvm install --lts
   nvm use --lts
   ```
2. Add the following to your `~/.zprofile` file:
   ```bash
   # Enable NVM.
   export NVM_DIR="$HOME/.nvm"
   source "/opt/homebrew/opt/nvm/nvm.sh"
   source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
   ```

## Setup Haskell
Run the following commands:
```bash
# Install GHCUp
brew install ghcup

# Install haskell toolchain.
ghcup install ghc
ghcup install cabal
ghcup install stack
ghcup install hls
```

## Install Useful Brew Forumlas
Run the following commands:
```bash
# Add brew taps
brew tap \
    teamookla/speedtest

# Update local brew database.
brew update

# Install brew formulas.
brew install \
    tmux \
    jq \
    thefuck \
    tldr \
    speedtest \
    q \
    awscli \
    eksctl \
    bat \
    dive \
    k9s \
    go \
    fx \
    mas
```

## Install Desktop Apps
Run the following commands:
```bash
# Update local brew database.
brew update

# Install automatically using cask.
brew install --cask \
    google-chrome \
    microsoft-teams \
    docker \
    microsoft-office \
    visual-studio-code \
    font-fira-code \
    whatsapp \
    zoom \
    jetbrains-toolbox \
    messenger \
    telegram \
    numi \
    steam \
    vlc \
    lens \
    postman \
    anydesk \
    warp \
    franz
```