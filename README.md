# My Development Environment
> Quickly setup my development enviroment

## Automatic Setup with Ansible
```bash
pip3 install ansible && ansible pull https://github.com/iDaN5x/dev-env.git
```


### Setup .Net
```bash
brew install --cask dotnet-sdk
```


### Setup NodeJs.
```bash
# Install NVM.
brew install nvm
mkdir ~/.nvm

# Install and use global node version (lts).
nvm install --lts
nvm use --lts
```

### Setup Haskell.
```bash
# Install GHCUp
brew install ghcup

# Install haskell toolchain.
ghcup install ghc
ghcup install cabal
ghcup install stack
ghcup install hls
```

### Setup Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Install Useful Brew Forumlas.
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
    fx
```

### Setup VIM
```bash
cp .vimrc ~/.vimrc
```

### Install Desktop Apps
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

### Install JetBrains Products
- Install the jetbrains toolbox with brew as demonstrated above.
- Launch the toolbox and install desired tools.

### Install Paste
Install the application through AppStore.
